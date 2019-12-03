#!/bin/bash
#��Ϊע�ͣ�����һ���⣬��һ������ʹ��bash�﷨
#�鿴ϵͳ���õ�shell   cat /etc/shells  linuxĬ��ʹ�õĽ����� echo $SHELL
#description:	ROS��װ�ű�
#time:			2019-12-3
#Author:		Ѧ��

#���ROS���Դ
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

#�����Կ
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

#�������Դ
sudo apt update

#��װROS
sudo apt install ros-melodic-desktop-full

#��ʼ��rosdep
sudo rosdep init
rosdep update

#���û�������
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc

#��װrosinstall ROS������
sudo apt install python-rosinstall python-rosinstall-generator python-wstool build-essential
