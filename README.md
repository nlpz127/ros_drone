# Description

+ An attempt to control a drone with ros.

# Environment

+ ubuntu 20.04
    + ros - noetic
+ python3

# Run code
## cmd (service)

```bash
# new terminal
roscore

# new terminal
rosrun cmd_video test_cmd_server.py

# new terminal
rosrun cmd_video test_cmd_client.py
```

![image](https://user-images.githubusercontent.com/48743005/142581421-21dc668e-4b77-4fc1-8f8a-92cff0f23990.png)




## simulate video_array (topic)

```bash
# new terminal
roscore

# new terminal
cd src/cmd_video/scripts/ && rosrun cmd_video test_video_array_pub.py 

# new terminal
cd src/cmd_video/scripts/ && rosrun cmd_video test_video_array_listener.py 
```

![image](https://user-images.githubusercontent.com/48743005/142583172-aa10455c-3810-46f6-b21b-42f02df9033f.png)

## simulate Image transmission (topic)

```bash
# new terminal
roscore

# new terminal
cd src/cmd_video/scripts/ && rosrun cmd_video test_pic_pub.py

# new terminal
cd src/cmd_video/scripts/ && rosrun cmd_video test_pic_sub.py
```

![image](https://user-images.githubusercontent.com/48743005/142583511-9563eef1-de86-4499-9fe9-a91e611cda83.png)