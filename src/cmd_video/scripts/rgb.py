#!/usr/bin/env python
import rospy
import numpy as np
import cv2 as cv
import time
from cv_bridge import CvBridge, CvBridgeError
from sensor_msgs.msg import Image


i = 0
def resize(img, height=None, width=None):
    """resize the image

    Args:
        img (array): png image
        height (int, optional): pixel. Defaults to None.
        width (int, optional): pixel. Defaults to None.

    Returns:
        image: the raw image
    """
    h, w = img.shape[0], img.shape[1]
    if height:
        width = int(w/h*height)
    else:
        height = int(h/w*width)
    # get the image
    target_img = cv.resize(img, dsize=(width, height))
    return target_img

def save_rgb_data(array, ts):
    file_path = f"/home/pzlu/p450/src/cmd_video/scripts/a_rgb_array/{ts}" 
    np.save(file_path, array)

def convert_depth_image(ros_image):
    bridge = CvBridge()
    global i
    try:

        img = bridge.imgmsg_to_cv2(ros_image)
        rgb_array = np.array(img, dtype=np.float32)
        
        # bgr -> rgb
        b,g,r = cv.split(img)
        img_rgb = cv.merge([r,g,b])
        
        # test rgb show
        #cv.imshow("cute", img_rgb)
        
        # save rgb image and data
        idx = str(i).zfill(4)
        print("Start save rgb image and data.")
        time_stamp = f"rgb_{time.localtime().tm_hour}_{time.localtime().tm_min}_{time.localtime().tm_sec}"
        save_rgb_data(rgb_array, time_stamp)
        #cv.imwrite("./a_rgb/frame{index}.png".format(index=idx), img_rgb)
        #print(f"./a_rgb/rgb_{time_stamp}.png")
        cv.imwrite(f"/home/pzlu/p450/src/cmd_video/scripts/a_rgb/rgb_{time_stamp}.png", img_rgb)
        print("Saved successfully.")
        i += 1
        cv.waitKey(10)
    except CvBridgeError as e:
        print(e)
        
def pixel2depth():
    rospy.init_node("lzc",anonymous=True)
    rospy.Subscriber("/camera/color/image_raw", Image, callback=convert_depth_image, queue_size=1)
    #rospy.spin()
    rospy.wait_for_message("/camera/color/image_raw", Image)
    
if __name__ == "__main__":
    pixel2depth()