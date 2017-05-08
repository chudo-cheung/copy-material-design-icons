#!/bin/bash
# By Chudo Cheung <chudo_cheung@163.com>
# https://github.com/chudo-cheung/copy-material-design-icons/
#
# Material Design Icons 项目是 Google 根据 Material Design 准则设计的官方图标集
# 主页：https://github.com/google/material-design-icons
# git: https://github.com/google/material-design-icons.git
#
# 使用方法：
# 1. 下载 Material design icons 项目到本地；
# 2. 修改下面的 MDI_PROJ_DIR 变量的值，填入 Material Design Icons 项目的目录；
# 3. 假设想使用 ic_arrow_back_white_26dp.png 这个图标，使用的图标大小是 48dp，输入以下命令即可：
#       ./copy_md_icons.sh 这里填入App项目的目录 ic_arrow_back_white 48

# Material Design Icons 项目的目录 (**请自行修改**)
MDI_PROJ_DIR="/code/material-design-icons/"

# APP 项目的目录
APP_PROJ_DIR="$1"

# 图片名称
NAME="$2"

# 图片大小 (单位: dp)
SIZE="$3"

for dentify in mdpi hdpi xhdpi xxhdpi xxxhdpi; do
    dst_dir="$APP_PROJ_DIR/app/src/main/res/drawable-$dentify/"
    mkdir -p "$dst_dir"
    cp -vi "$MDI_PROJ_DIR/"*"/drawable-$dentify/${NAME}_${SIZE%dp}dp.png" "$dst_dir"
done
