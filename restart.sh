#!/bin/bash

# 获取第一个参数
project_name=$1

if [ -z "$1" ]; then
    echo "[ERROR] Please input project name."
    exit 1
fi


# 保存当前目录
current_dir=$(pwd)

# 切换到 Git 仓库所在目录
cd "project/${project_name}/repo"
echo "[INFO] Restart project ${project_name}."

# 执行 git pull
git pull
echo "[INFO] git pull success."

# 返回到原始目录
cd $current_dir

docker compose down "${project_name}"
docker compose up -d "${project_name}"

echo "[INFO] Restart project ${project_name} success."