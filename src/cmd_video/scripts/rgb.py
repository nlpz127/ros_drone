#!/usr/bin/env python
import rospy
from cv_bridge import CvBridge, CvBridgeError
from sensor_msgs.msg import Image
import numpy as np
from PIL import Image as ii
import cv2 as cv

i = 0
def resize(img, height=None, width=None):
    """resize the image

    Args:
        img (array): png image
        height (int, optional): pixel. Defaults to None.
        width ([int, optional): pixel. Defaults to None.

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

def convert_depth_image(ros_image):
    bridge = CvBridge()
    global i
    try:

        img = CvBridge().imgmsg_to_cv2(ros_image)
        
        # bgr -> rgb
        b,g,r = cv.split(img)
        img_rgb = cv.merge([r,g,b])
        
        # test rgb show
        #cv.imshow("cute", img_rgb)
        
        # save rgb image
        idx = str(i).zfill(4)
        print(1)
        cv.imwrite("./rgb/frame{index}.png".format(index=idx), img_rgb)
        print(2)
        i += 1
        cv.waitKey(10)
    except CvBridgeError as e:
        print(e)
        
def pixel2depth():
    rospy.init_node("lzc",anonymous=True)
    rospy.Subscriber("/camera/color/image_raw", Image, callback=convert_depth_image, queue_size=1)
    rospy.spin()
    
if __name__ == "__main__":
    pixel2depth()