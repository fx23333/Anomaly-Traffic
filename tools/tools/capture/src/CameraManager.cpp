

#include <CameraManager.h>

/**
 * @brief 析构函数
 * 依次释放所有相机设备,并释放容器
 * 
 */
CameraManager::~CameraManager()
{
    for (auto it = camera_list_.begin();
         it != camera_list_.end();it++)
    {// 释放所有设备
    // 避免内存泄漏
        it->second->~Camera();
    }

    camera_list_.clear();
}

/**
 * @brief 当前相机设备是否存在
 * 
 * @param id 相机设备ID
 * @return true 
 * @return false 
 */
bool CameraManager::isCameraDeviceExist(DeviceID id)
{
    if (camera_list_.find(id) != camera_list_.end())
    { // 该设备已存在
        LOGE("Device ID:%u is already exists!", id);
        return true;
    }

    return false;
}

/**
 * @brief 移除指定相机设备
 * 
 * @param id 设备ID
 * @return true 
 * @return false 
 */
bool CameraManager::removeCameraDevice(DeviceID id)
{
    auto it = camera_list_.find(id);

    if (it==camera_list_.end())
    {// 该设备不存在
        LOGE("Device ID:%u is not exists!", id);
        return false;
    }

    it->second->~Camera();  // 释放设备
    camera_list_.erase(id); // 移除设备

    return true;
}

/**
 * @brief 获取指定ID相机设备
 * 
 * @param id 设备ID
 * @return Camera* 相机设备指针
 */
Camera *CameraManager::getCameraDevice(DeviceID id)
{
    auto it = camera_list_.find(id);
    if (it == camera_list_.end())
    {
        LOGE("Device ID:%u is not exists!", id);
        return NULL;
    }

    return it->second;
}

/**
 * @brief 重载[],方便使用下标访问设备
 * 
 * @param id 设备ID
 * @return Camera* 相机设备指针
 */
Camera* CameraManager::operator[](DeviceID id)
{
    return getCameraDevice(id);
}