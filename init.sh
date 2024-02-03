#!/bin/bash

# 使用清华源
# . sh/tsinghua_source.sh


# 卸载Firefox
sudo apt purge firefox -y
echo "Firefox已卸载."


# 安装deb软件
. sh/install_deb.sh

# 安装apt软件
. sh/install_apt.sh

# 配置搜狗输入法
. sh/sogou.sh

# 自动安装推荐的驱动
sudo ubuntu-drivers devices
sudo ubuntu-drivers autoinstall


# 安装boot-repair
. sh/boot-repair.sh

# 安装Docker
. sh/docker.sh

# 从fishros安装Docker
# . sh/fish_docker.sh

# 从fishros安装ROS
# . sh/fish_ros.sh

# 从fishros安装ROS的Docker镜像
# . sh/fish_ros_docker.sh


# 初始安装完毕
echo "初始安装完毕."

# 升级软件
sudo apt upgrade -y
echo "软件升级完毕."
