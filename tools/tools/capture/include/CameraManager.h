/*
 * @Copyright: © 2021, BeingGod. All rights reserved.
 * @Author: BeingGod
 * @Date: 2021-01-28 17:01:42
 * @LastEditors: BeingGod
 * @LastEditTime: 2021-02-01 21:34:39
 * @Description: 相机管理类
 */

#ifndef _CAMERA_MANAGER_H_
#define _CAMERA_MANAGER_H_

#include <CameraWrapper.h>
#include <unordered_map>

using namespace camera;
using namespace std;

typedef unordered_map<DeviceID, Camera *> CameraList; // 相机ID转换

/**
 * @brief 相机管理类
 * 使用工厂方法模式
 * 
 */
class CameraManager
{
public:
    ~CameraManager();
    virtual bool addCameraDevice(DeviceID id, bool init = true) =0;
    bool removeCameraDevice(DeviceID id);
    bool deviceIsInited(DeviceID id);
    Camera* getCameraDevice(DeviceID id);
    Camera *operator[](DeviceID id);

protected:
    bool isCameraDeviceExist(DeviceID id);
    CameraList camera_list_;
};

/**
 * @brief 迈德威视相机管理类
 * 
 */
class MindVisionCameraManager:public CameraManager
{
public:
    bool addCameraDevice(DeviceID id, bool init = true);
};

/**
 * @brief 普通相机管理类
 * 
 */
class CommonCameraManager : public CameraManager
{
public:
    bool addCameraDevice(DeviceID id, bool init = true);
};

#endif