#!/bin/bash


# 备份源
# 如果没有备份过源，就备份源
if [ ! -f /etc/apt/sources.list.old ]; then
    sudo cp /etc/apt/sources.list /etc/apt/sources.list.old
    echo "已经备份源到/etc/apt/sources.list.old."
fi

# 如果源文件中有清华源，就不再添加
if grep -q "mirror.tuna.tsinghua.edu.cn" /etc/apt/sources.list; then
    echo "已经有清华源了."
# 如果源文件中不是官方源，就不进行操作
elif ! grep -q "archive.ubuntu.com" /etc/apt/sources.list && ! grep -q "security.ubuntu.com" /etc/apt/sources.list; then
    echo "不是官方源，不进行操作."
# 如果源文件中是官方源，就添加清华源
else
    sudo sed -i "s@http://.*archive.ubuntu.com@https://mirror.tuna.tsinghua.edu.cn@g" /etc/apt/sources.list
    sudo sed -i "s@http://.*security.ubuntu.com@https://mirror.tuna.tsinghua.edu.cn@g" /etc/apt/sources.list
    echo "已经使用清华源."
fi


# 更新源
sudo apt update
echo "已经更新源."


