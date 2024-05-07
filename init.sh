#!/bin/bash

# 使用阿里云源
bash sh/aliyun_source.sh

# 使用清华源（不推荐，长期未使用，请自行检查代码）
# . sh/tsinghua_source.sh


# 卸载Firefox
# Ubuntu 20.04，可以通过下面的命令卸载Firefox,Ubuntu 22.04需要使用软件商店卸载
# sudo apt purge firefox -y
# echo "Firefox已卸载."

# 安装deb软件
bash sh/deb_install.sh

# 安装apt软件
bash sh/apt_install.sh

# 配置搜狗输入法
bash sh/sogou.sh

# 自动安装推荐的驱动
sudo ubuntu-drivers devices
sudo ubuntu-drivers autoinstall


# 安装boot-repair
# bash sh/boot-repair.sh

# 安装Docker
bash sh/docker.sh

# 从fishros安装Docker
# . sh/fish_docker.sh

# 从fishros安装ROS
# . sh/fish_ros.sh

# 从fishros安装ROS的Docker镜像
# . sh/fish_ros_docker.sh

# 安装zotero(国内可以访问添加的源后可安装)
# . sh/zotero.sh


# 初始安装完毕
echo "初始安装完毕."

# 升级软件
sudo apt upgrade -y
echo "软件升级完毕."
