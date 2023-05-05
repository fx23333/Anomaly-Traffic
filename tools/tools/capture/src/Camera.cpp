/*
 * @Copyright: © 2021, BeingGod. All rights reserved.
 * @Author: BeingGod
 * @Date: 2021-02-01 21:43:02
 * @LastEditors: BeingGod
 * @LastEditTime: 2021-02-01 21:49:19
 * @Description: 抽象相机类方法实现
 */

#include <CameraWrapper.h>

using namespace camera;

/**
 * @brief 构造函数
 * 
 */
Camera::Camera(DeviceID id, bool init)
:device_id_(id)
{
    
}

/**
 * @brief 析构函数
 * 
 */
Camera::~Camera()
{

}

/**
 * @brief 是否初始化
 * 
 * @return true 
 * @return false 
 */
bool Camera::isInited()
{
    return inited_; 
}

/**
 * @brief 设置相机参数值
 * 
 * @param prop 参数名
 * @param value 参数值
 */
void Camera::setPropValue(int prop,float value)
{
    switch (prop)
    {
    case 1:
        width_ = static_cast<unsigned int>(value);
        break;
    case 2:
        height_ = static_cast<unsigned int>(value);
        break;
    case 3:
        fps_ = value;
        break;
    case 4:
        horizontal_offset_ = static_cast<unsigned int>(value);
        break;
    case 5:
        vertical_offset_ = static_cast<unsigned int>(value);
        break;
    case 6:
        exposure_time_ = static_cast<unsigned int>(value);
        break;
    case 7:
        contrast_ = value;
        break;
    case 8:
        white_balance_ = value;
        break;
    case 9:
        gain_ = value;
        break;
    case 10:
        saturation_ = value;
        break;
    case 11:
        brightness_ = value;
    default:
        break;
    }
}

