#!/usr/bin/env python
import rospy
import numpy as np
import time
from cv_bridge import CvBridge, CvBridgeError
from sensor_msgs.msg import Image
from PIL import Image as pi

def save_depth_data(array, ts):
    file_path = f"/home/pzlu/p450/src/cmd_video/scripts/depth_array/{ts}"
    np.save(file_path, array)
    # np.savetxt(file_path+"11",array)


def convert_depth_image(ros_image):
    bridge = CvBridge()
    #global i
    try:
        depth_image = bridge.imgmsg_to_cv2(ros_image, desired_encoding="passthrough")
        depth_array = np.array(depth_image, dtype=np.float32)
        print(depth_array.shape)
        
        # get one pixel
        center_idx = np.array(depth_array.shape) / 2
        print("center depth:",depth_array[240,320])

        im = pi.fromarray(depth_array)
        im = im.convert("L")
        
        time_stamp = f"/depth_{time.localtime().tm_hour}_{time.localtime().tm_min}_{time.localtime().tm_sec}"
        print("Begin save depth image and data.")
        # save image and data
        ## save data
        save_depth_data(depth_array, time_stamp)
        ## save depth image
        im.save(f"/home/pzlu/p450/src/cmd_video/scripts/depth/{time_stamp}.png")
        print("Saved successfully.")
        
    except CvBridgeError as e:
        print(e)
        
def pixel2depth():
    rospy.init_node("lzh",anonymous=True)
    rospy.Subscriber("/camera/aligned_depth_to_color/image_raw", Image, callback=convert_depth_image, queue_size=1)
    rospy.spin() # keep
    # rospy.wait_for_message("/camera/aligned_depth_to_color/image_raw", Image) # only once
    
if __name__ == "__main__":
    pixel2depth()