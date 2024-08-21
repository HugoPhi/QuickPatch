#!/bin/bash

# 确保Nerd Fonts的font-patcher脚本已下载
FONT_PATCHER_PATH="./FontPatcher/font-patcher"

# 确保Nerd文件夹存在
OUTPUT_DIR="./Nerd"
mkdir -p "$OUTPUT_DIR"

# 遍历当前目录下的所有ttf和otf文件并打补丁
for font_file in ./origin/*.ttf ./origin/*.otf; do
    if [ -f "$font_file" ]; then
        echo "正在为 $font_file 打补丁..."
        fontforge -script $FONT_PATCHER_PATH "$font_file" --complete --outputdir "$OUTPUT_DIR"
    fi
done

echo "所有字体文件已完成打补丁，结果保存在 $OUTPUT_DIR 目录中。"

