
PATH_DATASET_HOLOLENS="/media/lc/Data/tmp/hololens/d2_mire_markers"
#echo "$PATH_DATASET_HOLOLENS" 








# ------ Extract .tar compressed file----------
tar -xf "${PATH_DATASET_HOLOLENS}/PV.tar"         --one-top-level="${PATH_DATASET_HOLOLENS}/PV"
tar -xf "${PATH_DATASET_HOLOLENS}/Depth AHaT.tar" --one-top-level="${PATH_DATASET_HOLOLENS}/Depth AHaT"
#TODO:   filter only useful clouds   xxxxxxx.pgm   

# ------ images .png generation----------
python3 convert_images.py --recording_path $PATH_DATASET_HOLOLENS
# ------ clouds .pcd and LUTconversion3d2d .csv generation----------
python3 save_pcloudsPCD_AHaTcam.py --recording_path $PATH_DATASET_HOLOLENS --cam_space 