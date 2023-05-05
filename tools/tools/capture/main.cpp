#include <CameraManager.h>
#include <iostream>
#include <time.h>
#include <unistd.h> 

int main(int argc, char **argv)
{   
    // int encode = VideoWriter::fourcc('M', 'J', 'P', 'G');
    // VideoWriter writer = VideoWriter(argv[1],encode,30,Size(640,480));

    // CommonCameraManager common_camera_manager;  // 实例化CommonCameraManager
    // common_camera_manager.addCameraDevice(0);
    
    // Mat src;
    // while (common_camera_manager[0]->readImg())
    // {
    //     src = common_camera_manager[0]->getImg();
    //     writer.write(src);
    //     imshow("USB Camera", src);
        
    //     if (waitKey(30)==27)
    //     {
    //         writer.release();            
    //         break;
    //     }
    // }
    
    CommonCameraManager common_camera_manager;  // 实例化CommonCameraManager
    common_camera_manager.addCameraDevice(0);
    
    stringstream images_path_sstream,images_start_index_sstream;
    Mat src;

    images_path_sstream << argv[1];
    while (common_camera_manager[0]->readImg())
    {
        src = common_camera_manager[0]->getImg();
        
        images_path_sstream << time(0) << ".jpg";
        imwrite(images_path_sstream.str(),src);
        images_path_sstream.str("");
        images_path_sstream << argv[1];

        imshow("USB Camera", src);
        
        if (waitKey(30)==27)
        {        
            break;
        }
        sleep(1);
    }
    
    return 0;
}
