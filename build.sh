#!/bin/bash

# Dockerイメージのビルド
sudo docker build -t tg-nginx .

# ビルド成功メッセージ
if [ $? -eq 0 ]; then
  echo "Dockerイメージのビルドが成功しました。"
else
  echo "Dockerイメージのビルドに失敗しました。"
  exit 1
fi