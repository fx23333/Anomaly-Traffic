
// #if defined(LINUX)

#include <CameraWrapper.h>

using namespace cv;
using namespace camera;

/**
 * @brief 构造函数
 * 
 * @param id 设备id,默认0
 * @param width 图像宽度,默认1280
 * @param height 图像高度,默认720
 * @param fps 帧率,默认30(该参数暂时无效)
 * @param init 是否自动初始化,默认true
 */
MindVisionCamera::MindVisionCamera(DeviceID id, bool init)
	: Camera(id, init)
{
	if (init)
	{
		horizontal_offset_ = 0;
		vertical_offset_ = 0;
		exposure_time_ = 10000;

		initCamera();
	}

	else
    {
        LOGW("MindVision Camera device:%u not inited! Please init!", device_id_);
    }
}

/**
	 * @brief 析构函数
	 * 
	 */
MindVisionCamera::~MindVisionCamera()
{
	LOGM("MindVision Camera device:%u is released!", device_id_);
}

/**
	 * @brief 释放相机
	 * 
	 */
void MindVisionCamera::releaseCamera()
{
}

/**
	 * @brief 初始化相机
	 * 
	 * @return true 初始化成功
	 * @return false 初始化失败
	 */
bool MindVisionCamera::initCamera()
{
	LOGM("Initing MindVision Camera...");

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

	if (exposure_time_ == CAMERA_PARAM_UNDEFINED)
	{
		LOGE("Exposure Time Undefined.Please run setPropValue() to set value");
		return false;
	}

	if (horizontal_offset_ == CAMERA_PARAM_UNDEFINED)
	{
		LOGE("Horizontal Offset Undefined.Please run setPropValue() to set value");
		return false;
	}

	if (vertical_offset_ == CAMERA_PARAM_UNDEFINED)
	{
		LOGE("Vertical Offset Undefined.Please run setPropValue() to set value");
		return false;
	}

	iCameraCounts_ = 1;
	iStatus_ = -1;
	iplImage_ = NULL;
	channel_ = 3;

	//初始化SDK 0 English 1 中文
	CameraSdkInit(1);

	//枚举设备，并建立设备列表
	iStatus_ = CameraEnumerateDevice(&tCameraEnumList_, &iCameraCounts_);

	//没有连接设备
	if (iCameraCounts_ == 0)
	{
		LOGE("No connected device!");
		return false;
	}

	//相机初始化。初始化成功后，才能调用任何其他相机相关的操作接口
	iStatus_ = CameraInit(&tCameraEnumList_, -1, -1, &hCamera_);

	//初始化失败
	if (iStatus_ != CAMERA_STATUS_SUCCESS)
	{
		LOGE("Init failed status=%d", iStatus_);
		return false;
	}

	//获得相机的特性描述结构体。该结构体中包含了相机可设置的各种参数的范围信息。决定了相关函数的参数
	CameraGetCapability(hCamera_, &tCapability_);
	g_pRgbBuffer_ = (unsigned char *)malloc(tCapability_.sResolutionRange.iHeightMax * tCapability_.sResolutionRange.iWidthMax * 3);
	CameraPlay(hCamera_);

	CameraSetAeState(hCamera_, FALSE);			//设置为手动曝光模式
	CameraSetExposureTime(hCamera_, exposure_time_); //曝光时间，单位为微妙    1秒=1000毫秒=1000000微妙  曝光时间是快门开始到关闭的时间  5000微妙，1s大概采200次

	memset(&sImageSize_, 0, sizeof(tSdkImageResolution));
	sImageSize_.iIndex = 0xff;
	sImageSize_.iHOffsetFOV = horizontal_offset_;
	sImageSize_.iVOffsetFOV = vertical_offset_;
	sImageSize_.iWidthFOV = width_;
	sImageSize_.iHeightFOV = height_;
	sImageSize_.iWidth = width_;
	sImageSize_.iHeight = height_;
	CameraSetImageResolution(hCamera_, &sImageSize_);

	if (tCapability_.sIspCapacity.bMonoSensor)
	{
		channel_ = 1;
		CameraSetIspOutFormat(hCamera_, CAMERA_MEDIA_TYPE_MONO8);
	}
	else
	{
		channel_ = 3;
		CameraSetIspOutFormat(hCamera_, CAMERA_MEDIA_TYPE_BGR8);
	}
	
	inited_ = true;

	LOGM("MindVision Camera device:%u init success!", device_id_);

	return true;
}

/**
	 * @brief 相机读图，并将图像保存至img_
	 * 
	 * @return true 读取成功
	 * @return false 读取失败
	 */
bool MindVisionCamera::readImg()
{
	if (isInited()!=true)
	{
		LOGE("MindVision Camera device:%u not inited!", device_id_);
		return false;
	}

	if (CameraGetImageBuffer(hCamera_, &sFrameInfo_, &pbyBuffer_, 1000) == CAMERA_STATUS_SUCCESS)
	{
		CameraImageProcess(hCamera_, pbyBuffer_, g_pRgbBuffer_, &sFrameInfo_);
		if (iplImage_)
		{
			cvReleaseImageHeader(&iplImage_);
		}
		iplImage_ = cvCreateImageHeader(cvSize(sFrameInfo_.iWidth, sFrameInfo_.iHeight), IPL_DEPTH_8U, channel_);
		cvSetData(iplImage_, g_pRgbBuffer_, sFrameInfo_.iWidth * channel_); //此处只是设置指针，无图像块数据拷贝，不需担心转换效率

		img_ = cv::cvarrToMat(iplImage_);

		// 在成功调用CameraGetImageBuffer后，必须调用CameraReleaseImageBuffer来释放获得的buffer。
		// 否则再次调用CameraGetImageBuffer时，程序将被挂起一直阻塞，直到其他线程中调用CameraReleaseImageBuffer来释放了buffer
		CameraReleaseImageBuffer(hCamera_, pbyBuffer_);

		return true;
	}

	return false;
}

/**
	 * @brief 获取图像帧
	 * 
	 * @return Mat 图像帧
	 */
Mat MindVisionCamera::getImg() const
{
	return img_;
}

// #else

// #error "Not support platform."

// #endif