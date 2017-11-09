#!/bin/bash

# 设置搜索时显示通道地址
conda config --set show_channel_urls yes

# 安装环境
conda env create -f environment.yml

