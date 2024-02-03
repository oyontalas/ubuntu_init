#!/bin/bash


# 卸载ibus

sudo apt purge ibus -y
sudo apt purge ibus-* -y
echo "ibus 已卸载."

# 将键盘输入法系统改为fcitx
im-config -n fcitx -d
echo "已经将键盘输入法系统改为fcitx."

# 安装搜狗输入法依赖
sudo apt install libqt5qml5 libqt5quick5 libqt5quickwidgets5 qml-module-qtquick2 -y
sudo apt install libgsettings-qt1 -y

echo "已经安装搜狗输入法依赖."

# 设置fcitx开机自启动
sudo cp /usr/share/applications/fcitx.desktop /etc/xdg/autostart/
echo "已经设置fcitx开机自启动."