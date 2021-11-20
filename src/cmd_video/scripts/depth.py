#!/usr/bin/env python
import rospy
from cv_bridge import CvBridge, CvBridgeError
from sensor_msgs.msg import Image
import numpy as np
from PIL import Image as ii

i = 0
def convert_depth_image(ros_image):
    bridge = CvBridge()
    global i
    try:
        depth_image = bridge.imgmsg_to_cv2(ros_image, desired_encoding="passthrough")
        depth_array = np.array(depth_image, dtype=np.float32)
        center_idx = np.array(depth_array.shape) / 2
        #print(center_idx)
        #print(depth_array.shape)
        #print("center depth:",depth_array[249,320])
        #print("sdadas")
        im = ii.fromarray(depth_array)
        im = im.convert("L")
        idx = str(i).zfill(4)
        print(1)
        im.save("./pp/frame{index}.png".format(index=idx))
        print(2)
        i += 1
    except CvBridgeError as e:
        print(e)
        
def pixel2depth():
    rospy.init_node("lzh",anonymous=True)
    rospy.Subscriber("/camera/aligned_depth_to_color/image_raw", Image, callback=convert_depth_image, queue_size=1)
    rospy.spin()
    
if __name__ == "__main__":
    pixel2depth()