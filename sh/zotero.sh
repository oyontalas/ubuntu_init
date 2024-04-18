#!/bin/bash

# 安装zotero s1
wget -qO- https://raw.githubusercontent.com/retorquere/zotero-deb/master/install.sh | sudo bash

# 更新apt
sudo apt update

# 安装zotero s2
sudo apt install zotero -f -y
