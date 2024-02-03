#!/bin/bash

# 安装ROS
sudo wget http://fishros.com/install -O fishros && . fishros<<EOF
1
2
1
1
EOF
echo "已经安装ROS."

# # 安装Docker
# sudo wget http://fishros.com/install -O fishros && . fishros<<EOF
# 8
# EOF

# sudo groupadd docker     #添加docker用户组
# sudo gpasswd -a $USER docker     #将登陆用户加入到docker用户组中
# newgrp docker     #更新用户组
# docker ps    #测试docker命令是否可以使用sudo正常使用

# echo "已经安装Docker."

