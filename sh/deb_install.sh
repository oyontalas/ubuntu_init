#!/bin/bash


#安装所有同文件夹的deb和依赖
for file in `ls ./deb/*.deb`
    do
        echo "------------------正在安装$file...------------------"

        sudo dpkg -i $file
        # 如果安装失败，就尝试修复依赖
        if [ $? -ne 0 ]; then
            sudo apt install -f -y
        fi
        
        # 如果安装的是vscode（它的deb包格式是code_*_amd64.deb），就打开它，
        # if [[ $file == code_* ]]; then
        #     code
        # fi


        echo "------------------$file安装完毕.------------------"


        # sudo apt install -f -y
    done

echo "已经安装所有同文件夹的deb和依赖."










