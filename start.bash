#/bin/bash
gnome-terminal -- rosrun cmd_video rgb.py
sleep 0.01s
gnome-terminal -- rosrun cmd_video depth.py