#!/bin/bash
#作为注释，除第一行外，第一行声明使用bash语法
#查看系统可用的shell   cat /etc/shells  linux默认使用的解释器 echo $SHELL
#description:	ROS安装脚本
#time:			2019-12-3
#Author:		薛棣棣

#添加ROS软件源
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

#添加秘钥
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

#更新软件源
sudo apt update

#安装ROS
sudo apt install ros-melodic-desktop-full

#初始化rosdep
sudo rosdep init
rosdep update

#设置环境变量
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc

#安装rosinstall ROS依赖包
sudo apt install python-rosinstall python-rosinstall-generator python-wstool build-essential
