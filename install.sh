#!/bin/bash

# 获取第一个参数
project_name=$1

if [ -z "$1" ]; then
    echo "[ERROR] Please input project name."
    exit 1
fi

source "project/${project_name}/boot.sh"

echo "[INFO] clone $REPO_URL";
# git clone $REPO_URL project/${project_name}/repo

sh start.sh "${project_name}"

