import sys
import cv2
import time
import torch
import numpy as np
from PIL import Image
import Jetson.GPIO as GPIO
import torch.nn.functional as F
from traceback import print_exc
from torchvision import transforms
# from jetcam.usb_camera import USBCamer

CUDA=torch.cuda.is_available() 
DEVICE = torch.device("cuda" if CUDA else "cpu")

LABEL2NAME = {
                0: '正常流量',
                1: '异常流量',
                2: '恶意流量',
                3: 'DDoS攻击',
            }

NONE = 0
SAMLLCAR = [1]
BIGCAR = [3]
TRUCK = [2]
OTHERS = []

class App:
    def __init__(self,model_path):
        self.path = model_path
        self.gpio_list= [37,35,33]
        self.score_thresh = 0.6 # 得分阈值,低于该得分视为无垃圾
        self.capture_thresh = 30 # 捕捉图像阈值,高于阈值,计算得分
        self.gpio_status = False # GPIO口状态
        self.camera = False

        self.model = self.__load_model()
        
    '''
    析构函数
    '''
    def __del__(self):
        # GPIO.cleanup(self.gpio_list) # 释放GPIO口资源
        pass
        
    def __init_GPIO(self):
        try:
            GPIO.setwarnings(False)
            GPIO.setmode(GPIO.BOARD)
            GPIO.setup(self.gpio_list, GPIO.OUT,initial=GPIO.LOW)
            GPIO.output(self.gpio_list, (GPIO.LOW, GPIO.LOW, GPIO.LOW)) # 全部置0
            
        except Exception as e:
            print_exc(limit=1,file=sys.stdout)
            print("[ERROR] GPIO inited failed!")
            sys.exit(-1)
        
        self.gpio_status = True
    
    def __release_GPIO(self):
        try:
            GPIO.cleanup(self.gpio_list)

        except Exception as e:
            print_exc(limit=1,file=sys.stdout)
            print("[ERROR] GPIO released failed!")
            sys.exit(-1)

    def __init_USBCamera(self,device):
        # try:
        #     self.camera = USBCamera(width=224, height=224, capture_width=640,
        #           capture_height=480, capture_device=device)

        # except Exception as e:
        #     print_exc(limit=1, file=sys.stdout)
        #     print("[ERROR] USBCamera inited failed!")
        #     sys.exit(-1)

        try:
            # 设置相机参数
            self.camera = cv2.VideoCapture(device)
            self.camera.set(cv2.CAP_PROP_FRAME_WIDTH, 640)
            self.camera.set(cv2.CAP_PROP_FRAME_HEIGHT, 480)
            self.camera.set(cv2.CAP_PROP_FPS, 480)

        except Exception as e:
            print_exc(limit=1, file=sys.stdout)
            print("[ERROR] USBCamera inited failed!")
            sys.exit(-1)
    
    '''
    加载模型
    '''
    def __load_model(self):
        try:
            model = torch.load(self.path)
            model.to(DEVICE)
        
        except Exception as e:
            print_exc(limit=1,file=sys.stdout)
            print("[ERROR] Model loaded failed!")
            sys.exit(-1)
            
        return model
    
    '''
    定义图像变换
    '''
    def __get_transforms(self):
        img_mean = [0.91341771,0.91523635,0.90348119]
        img_std = [0.08975674,0.10395834,0.10300624]

        image_transforms = transforms.Compose([
            transforms.Resize(224),
            transforms.ToTensor(),
            transforms.Normalize(img_mean, img_std)
        ])

        return image_transforms

    '''
    推理
    '''
    def __infer_test(self,src,image_transforms):
        # 预处理图像
        src = cv2.cvtColor(src,cv2.COLOR_BGR2RGB) # 颜色空间转换
        src = Image.fromarray(src)
        src_tensor = image_transforms(src)
        src_tensor = src_tensor.view(1,3,224,224)
        src_tensor_gpu = src_tensor.to(DEVICE) # 将图像转移至GPU

        # 执行推理
        output = self.model(src_tensor_gpu)
        output = F.softmax(output, dim=1).detach().cpu().numpy().flatten()
        category_index = output.argmax()
        score = output[category_index]

        if score < self.score_thresh or category_index == 0:
            # 小于阈值
            print("Category: 无垃圾  Score: 0")
            return -1,0
        
        print("Category: {}  Score: {:.4f}".format(
            LABEL2NAME[category_index], score))
        
        return category_index,output[category_index]
    
    def __infer(self,src,image_transforms):
        # 预处理图像
        src = cv2.cvtColor(src,cv2.COLOR_BGR2RGB) # 颜色空间转换
        src = Image.fromarray(src)
        src_tensor = image_transforms(src)
        src_tensor = src_tensor.view(1,3,224,224)
        src_tensor_gpu = src_tensor.to(DEVICE) # 将图像转移至GPU

        # 执行推理
        output = self.model(src_tensor_gpu)
        output = F.softmax(output, dim=1).detach().cpu().numpy().flatten()
        category_index = output.argmax()
        score = output[category_index]

        if score < self.score_thresh or category_index == 0:
            # 小于阈值
            return -1,0
        
        return category_index,output[category_index]

    '''
    控制
    '''
    def __send(self,tag):
        if not self.gpio_status:
            print("[ERROR] GPIO not inited!")
            return False

        if tag == 0:
            # 无车
            GPIO.output(self.gpio_list,(GPIO.LOW,GPIO.LOW,GPIO.LOW))
            return True
            
        if tag == 1:
            # 小型汽车
            GPIO.output(self.gpio_list,(GPIO.LOW,GPIO.LOW,GPIO.HIGH))
            return True
            
        if tag == 2:
            # 大型汽车
            GPIO.output(self.gpio_list,(GPIO.LOW,GPIO.HIGH,GPIO.LOW))
            return True
            
        if tag == 3:
            # 货车
            GPIO.output(self.gpio_list,(GPIO.LOW,GPIO.HIGH,GPIO.HIGH))
            return True
        
        if tag == 4:
            # 其他车辆
            GPIO.output(self.gpio_list,(GPIO.HIGH,GPIO.LOW,GPIO.LOW))
            return True

    '''
    测试
    '''
    def test(self):
        self.__init_GPIO() # 初始化GPIO口
        self.__init_USBCamera(0) # 初始化相机
        image_transformers = self.__get_transforms()

        
        while True:
            retval,frame = self.camera.read()
            cv2.imshow("source",frame)
            
            key = cv2.waitKey(30)
            
            if key == 105: # 按下i进行预测
                frame = cv2.resize(frame, (224, 224))
                category_id, score = self.__infer_test(frame, image_transformers)

                if category_id == -1 :
                    self.__send(0) # 无车辆
                    
                if category_id in SAMLLCAR:
                    self.__send(1) # 小型汽车

                if category_id in BIGCAR:
                    self.__send(2)  # 大型汽车

                if category_id in TRUCK:
                    self.__send(3) # 货车

                if category_id in OTHERS:
                    self.__send(4)  # 其他车辆
                    
            if key == 27:
                break

        self.__release_GPIO()

    def run(self):
        self.__init_GPIO() # 初始化GPIO口
        self.__init_USBCamera(0) # 初始化相机
        image_transformers = self.__get_transforms()

        
        frame_count = 1
        mat_list = []
        while True:
            retval,frame = self.camera.read()
            cv2.imshow("source",frame)
            
            key = cv2.waitKey(30)
            
            if frame_count % 3 ==  0:
                mat_list.append(cv2.resize(frame, (224, 224)))
                                
            if len(mat_list) == 10:            
                category_score_sum  = {}

                for i in range(len(mat_list)):
                    image = mat_list.pop()
                    category_id, score = self.__infer(image, image_transformers)

                    if  category_id not in category_score_sum:
                        category_score_sum[category_id] = score

                    else:
                        category_score_sum[category_id] += score
                
                best_category_id = -1
                max_ = -1
                for category_id,sum_ in category_score_sum.items():
                    if sum_ > max_:
                        best_category_id = category_id

                if category_id == -1 :
                    self.__send(0) # 无
                    print("none")

                if category_id in SAMLLCAR:
                    self.__send(1) # 小型车辆
                    print("SAMLLCAR")

                if category_id in BIGCAR:
                    self.__send(2)  # 大型车辆
                    print("BIGCAR")

                if category_id in TRUCK:
                    self.__send(3) # 货车
                    print("TRUCK")

                if category_id in OTHERS:
                    self.__send(4)  # 其他车辆
                    print("others")

            if key == 27:
                break

            frame_count += 1

        self.__release_GPIO()

if __name__ == "__main__":
    app = App(sys.argv[1]) # 模型路径
    # app.test()
    app.run()
    
