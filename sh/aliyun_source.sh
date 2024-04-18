#!/bin/bash

# 使用阿里云源

# 获取Ubuntu版本
version=$(lsb_release -a 2>/dev/null | grep "Release" | awk '{print $2}')
# 如果是Ubuntu 20.04，将source/aliyun_sources_ubuntu20.list复制到/etc/apt/sources.list
if [ $version = "20.04" ]; then
    # 备份源
    sudo mv /etc/apt/sources.list /etc/apt/sources.list.old
    sudo cp source/aliyun_sources_ubuntu20.list /etc/apt/sources.list
# 如果是Ubuntu 22.04，将source/aliyun_sources_ubuntu22.list复制到/etc/apt/sources.list
elif [ $version = "22.04" ]; then
    # 备份源
    sudo mv /etc/apt/sources.list /etc/apt/sources.list.old
    sudo cp source/aliyun_sources_ubuntu22.list /etc/apt/sources.list
# 如果是其他版本，报错退出，要求用户手动更改源
else
    echo "请手动更改源,并在init.sh中注释掉. ./aliyun_source.sh,以防止报错."
    exit 1
fi

echo "已经备份源到/etc/apt/sources.list.old."
echo "已经使用阿里云源."