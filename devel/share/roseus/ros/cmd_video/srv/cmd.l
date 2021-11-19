;; Auto-generated. Do not edit!


(when (boundp 'cmd_video::cmd)
  (if (not (find-package "CMD_VIDEO"))
    (make-package "CMD_VIDEO"))
  (shadow 'cmd (find-package "CMD_VIDEO")))
(unless (find-package "CMD_VIDEO::CMD")
  (make-package "CMD_VIDEO::CMD"))
(unless (find-package "CMD_VIDEO::CMDREQUEST")
  (make-package "CMD_VIDEO::CMDREQUEST"))
(unless (find-package "CMD_VIDEO::CMDRESPONSE")
  (make-package "CMD_VIDEO::CMDRESPONSE"))

(in-package "ROS")





(defclass cmd_video::cmdRequest
  :super ros::object
  :slots (_x _y _z _yaw ))

(defmethod cmd_video::cmdRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:yaw __yaw) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _yaw (float __yaw))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _yaw
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass cmd_video::cmdResponse
  :super ros::object
  :slots (_feedback ))

(defmethod cmd_video::cmdResponse
  (:init
   (&key
    ((:feedback __feedback) 0)
    )
   (send-super :init)
   (setq _feedback (round __feedback))
   self)
  (:feedback
   (&optional __feedback)
   (if __feedback (setq _feedback __feedback)) _feedback)
  (:serialization-length
   ()
   (+
    ;; int32 _feedback
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _feedback
       (write-long _feedback s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _feedback
     (setq _feedback (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass cmd_video::cmd
  :super ros::object
  :slots ())

(setf (get cmd_video::cmd :md5sum-) "fb3b298255840e179b7df41870a2c158")
(setf (get cmd_video::cmd :datatype-) "cmd_video/cmd")
(setf (get cmd_video::cmd :request) cmd_video::cmdRequest)
(setf (get cmd_video::cmd :response) cmd_video::cmdResponse)

(defmethod cmd_video::cmdRequest
  (:response () (instance cmd_video::cmdResponse :init)))

(setf (get cmd_video::cmdRequest :md5sum-) "fb3b298255840e179b7df41870a2c158")
(setf (get cmd_video::cmdRequest :datatype-) "cmd_video/cmdRequest")
(setf (get cmd_video::cmdRequest :definition-)
      "float32 x
float32 y
float32 z
float32 yaw
---
int32 feedback
")

(setf (get cmd_video::cmdResponse :md5sum-) "fb3b298255840e179b7df41870a2c158")
(setf (get cmd_video::cmdResponse :datatype-) "cmd_video/cmdResponse")
(setf (get cmd_video::cmdResponse :definition-)
      "float32 x
float32 y
float32 z
float32 yaw
---
int32 feedback
")



(provide :cmd_video/cmd "fb3b298255840e179b7df41870a2c158")


