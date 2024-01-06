#!/bin/bash

# 获取第一个参数
project_name=$1

if [ -z "$1" ]; then
    echo "[ERROR] Please input project name."
    exit 1
fi

bash stop.sh "${project_name}" && \
bash start.sh "${project_name}" && \
echo "[INFO] restart ${project_name} success."