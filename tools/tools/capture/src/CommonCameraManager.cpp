

#include <CameraManager.h>

/**
 * @brief 向相机容器中添加相机设备
 * 
 * @param flag 设备类型
 * @param id 设备ID
 * @param init 是否自动初始化
 * @return true 
 * @return false 
 */
bool CommonCameraManager::addCameraDevice(DeviceID id, bool init)
{
    Camera *camera = NULL;
    if (isCameraDeviceExist(id))
        return false;

    camera = new CommonCamera(id, init);
    camera_list_.insert(pair<DeviceID, Camera *>(id, camera)); // 添加设备

    return true;
}