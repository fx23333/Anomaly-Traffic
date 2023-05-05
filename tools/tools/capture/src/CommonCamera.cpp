

#include <CameraWrapper.h>

using namespace cv;
using namespace camera;

/**
 * @brief 构造函数
 * 
 * @param init 是否自动初始化,默认true
 */
CommonCamera::CommonCamera(DeviceID id, bool init)
    : Camera(id, init)
{
    if (init)
    {// 自动初始化
        width_ = 640;
        height_ = 480;
        fps_ = 30;
        
        initCamera();
    }
    
    else
    {
        LOGW("Common Camera device:%u not inited! Please init!", device_id_);
    }
}

/**
 * @brief 析构函数
 * 
 */
CommonCamera::~CommonCamera()
{
    releaseCamera();
    LOGM("Common Camera device:%u is released!",device_id_);
}

/**
 * @brief 初始化相机
 * 
 * @return true 初始成功
 * @return false 初始化失败
 */
bool CommonCamera::initCamera()
{
    LOGM("Initing Common Camera...");

    if (width_ == CAMERA_PARAM_UNDEFINED)
    {
        LOGE("Width Undefined.Please run setPropValue() to set value");
        return false;
    }

    if (height_ == CAMERA_PARAM_UNDEFINED)
    {
        LOGE("Height Undefined.Please run setPropValue() to set value");
        return false;
    }

    if (fps_ == CAMERA_PARAM_UNDEFINED)
    {
        LOGE("Width Undefined.Please run setPropValue() to set value");
        return false;
    }

    if (exposure_time_ != CAMERA_PARAM_UNDEFINED)
    {// 设置曝光
    // 仅当摄像头支持时
        cap_.set(CV_CAP_PROP_EXPOSURE, exposure_time_);
    }

    if (contrast_ != CAMERA_PARAM_UNDEFINED)
    {// 设置对比度
    // 仅当摄像头支持时
        cap_.set(CAP_PROP_CONTRAST, contrast_);
    }

    if (gain_ != CAMERA_PARAM_UNDEFINED)
    {// 设置增益
    // 仅当摄像头支持时
        cap_.set(CAP_PROP_GAIN, contrast_);
    }

    if (white_balance_ != CAMERA_PARAM_UNDEFINED)
    {// 设置白平衡
    // 仅当摄像头支持时
        cap_.set(CAP_PROP_WHITE_BALANCE_BLUE_U, white_balance_);
    }
    
    if (saturation_ != CAMERA_PARAM_UNDEFINED)
    {// 设置饱和度
    // 仅当摄像头支持时
        cap_.set(CAP_PROP_SATURATION, white_balance_);
    }
    
    if (brightness_ != CAMERA_PARAM_UNDEFINED)
    {// 设置饱和度
    // 仅当摄像头支持时
        cap_.set(CAP_PROP_BRIGHTNESS, brightness_);
    }

#if defined(LINUX)
    // 若为Linux系统,则使用V4L2框架打开相机
    cap_ = VideoCapture(device_id_,CV_CAP_V4L2);
#else
    cap_ = VideoCapture(device_id_);
#endif

    cap_.set(CV_CAP_PROP_FRAME_WIDTH, width_);
    cap_.set(CV_CAP_PROP_FRAME_HEIGHT, height_);
    cap_.set(CV_CAP_PROP_FPS, fps_);
    
    if (cap_.isOpened())
    {
        inited_ = true;

		LOGM("Common Camera device:%u init success!", device_id_);

        return true;
    }

    return false;
}

/**
 * @brief 相机读图,并将图像保存至img_
 * 
 * @return true 读取成功
 * @return false 读取失败
 */
bool CommonCamera::readImg()
{
    if (isInited() != true)
    {
        LOGE("Common camera device:%u not inited!", device_id_);
        return false;
    }

    if (cap_.grab())
    // 使用grap()加快读图速度
    {
        cap_.retrieve(img_, 0);
        return true;
    }

    return false;
}

/**
 * @brief 释放相机
 * 
 */
void CommonCamera::releaseCamera()
{
    cap_.release();
}

/**
 * @brief 获取图像帧
 * 
 * @return Mat 图像帧
 */
Mat CommonCamera::getImg() const
{
    return img_;
}