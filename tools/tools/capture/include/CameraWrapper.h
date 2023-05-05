/*
 * @Copyright: © 2021, BeingGod. All rights reserved.
 * @Author: BeingGod
 * @Date: 2021-01-24 00:40:44
 * @LastEditors: BeingGod
 * @LastEditTime: 2021-04-07 15:38:17
 * @Description: 抽象相机类,普通相机类,工业相机类声明
 */

#ifndef _CAMERA_WRAPPER_H_
#define _CAMERA_WRAPPER_H_

#include <opencv2/opencv.hpp>
#include <CameraApi.h>
#include <Log.h>

using namespace cv;

namespace camera
{

#define CAMERA_PARAM_UNDEFINED NULL

// 定义相机属性
#define PROP_WIDTH 1
#define PROP_HEIGHT 2
#define PROP_FPS 3
#define PROP_HOFF 4
#define PROP_VOFF 5
#define PROP_EXPOSURE_TIME 6
#define PROP_CONTRAST 7
#define PROP_WHITE_BALANCE 8
#define PROP_GAIN 9
#define PROP_SATURATION 10
#define PROP_BRIGHTNESS 11

    typedef unsigned int DeviceID; // 设备ID类型

    /**
     * @brief 相机类
     * 
     */
    class Camera
    {
    public:
        Camera(DeviceID, bool);
        virtual ~Camera();
        
        void setPropValue(int,float);
        bool isInited();
        
        virtual bool initCamera() = 0;
        virtual bool readImg() = 0;
        virtual void releaseCamera() = 0;
        virtual Mat getImg() const = 0;
        
    protected:
        DeviceID device_id_;
        bool inited_;

        unsigned int width_=CAMERA_PARAM_UNDEFINED;                  // 输出图像宽度
        unsigned int height_=CAMERA_PARAM_UNDEFINED;                 // 输出图像高度
        float fps_=CAMERA_PARAM_UNDEFINED;                           // 相机捕捉图像帧率
        unsigned int horizontal_offset_=CAMERA_PARAM_UNDEFINED;      // 输出图像相对左上角水平偏移
        unsigned int vertical_offset_=CAMERA_PARAM_UNDEFINED;        // 输出图像相对左上角竖直偏移
        unsigned int exposure_time_=CAMERA_PARAM_UNDEFINED;          // 相机曝光时间
        float contrast_=CAMERA_PARAM_UNDEFINED;                      // 相机对比度
        float white_balance_=CAMERA_PARAM_UNDEFINED;                 // 相机白平衡
        float gain_=CAMERA_PARAM_UNDEFINED;                          // 相机增益
        float saturation_=CAMERA_PARAM_UNDEFINED;                    // 相机饱和度
        float brightness_=CAMERA_PARAM_UNDEFINED;                    // 相机亮度
        float hue_=CAMERA_PARAM_UNDEFINED;                           // 相机色调
    
    };

    /**
     * @brief 普通相机
     * 注意：若出现select timeout错误，请使用USB3.0的接口
     * 
     */
    class CommonCamera : public Camera
    {
    public:
        CommonCamera(DeviceID id, bool init);
        ~CommonCamera();
        bool initCamera();
        void releaseCamera();
        bool readImg();
        Mat getImg() const;

    private:
        VideoCapture cap_;
        Mat img_; // 输出图像
    };

// #if defined(LINUX)
    /**
     * @brief 迈德威视相机
     * 注意：请务必使用USB3.0接口，否则会出现内存错误
     * 
     */
    class MindVisionCamera : public Camera
    {
    public:
        MindVisionCamera(DeviceID id, bool init);
        ~MindVisionCamera();
        bool initCamera();
        void releaseCamera();
        bool readImg();
        Mat getImg() const;

    private:
        int iCameraCounts_;
        int iStatus_;
        tSdkCameraDevInfo tCameraEnumList_;
        int hCamera_;
        tSdkCameraCapbility tCapability_; //设备描述信息
        tSdkFrameHead sFrameInfo_;
        BYTE *pbyBuffer_;
        tSdkImageResolution sImageSize_;
        IplImage *iplImage_;
        int channel_;
        unsigned char *g_pRgbBuffer_; //处理后数据缓存区
        Mat img_;                     // 输出图像
    };

// #else

    // #error "Not supported platform."
    
// #endif

} // namespace camera
#endif