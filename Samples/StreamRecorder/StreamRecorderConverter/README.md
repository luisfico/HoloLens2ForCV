From:  https://github.com/microsoft/HoloLens2ForCV/tree/main/Samples/StreamRecorder

#Extract all

Extract all .PNG images and .PCD(clouds) .PGM(depth iamges)
	
	sh  extractImagesAndClouds.sh
	
#Extract individually

            //TO MAKE
            //1) Decompress camera image and depth image from  directories /PV and /Depth AHAT             OJO!   NAME DIRECTORY MUST BE    "Depth AHAT"  
                 Remove  clouds  xxxxxxxxx_ab.pgm       beacuse    just the   clous  xxxxxxX.pgm  will be used 
                 
            //2) cd Dev/HoloLens2ForCV/Samples/StreamRecorder/StreamRecorderConverter            

            ------ images .png generation----------
            // python3 convert_images.py --recording_path "/run/user/1000/gvfs/smb-share:server=naboo,share=dev%20log/TEMP/PoseMonocularDepth/hololens/d9/"   (from server naboo)
            // python3 convert_images.py --recording_path "/media/lc/Data/tmp/hololens/d3_mire_markers/"
            
            ------ extract clouds .pcd and LUTconversion3d2d .csv generation   (respect to camera VP frame)----------
            // python3 save_pcloudsPCD_AHaTcam.py --recording_path "/run/user/1000/gvfs/smb-share:server=naboo,share=dev%20log/TEMP/PoseMonocularDepth/hololens/d9/" --cam_space 
            // python3 save_pcloudsPCD_AHaTcam.py --recording_path "/media/lc/Data/tmp/hololens/d3_mire_markers/" --cam_space 
            
            PLEASE!!!! Remove zip files          
            //TO PUBLISH ROS TOPIC image and clouds       RENAME DIRECTORY FROM  "Depth AHAT"   TO    "DepthAHAT"     
