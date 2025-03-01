#!/bin/bash

# 引数の処理
while getopts "sd" opt; do
  case $opt in
    s) STOP_CONTAINER=true ;; # -s: コンテナを停止
    d) REMOVE_CONTAINER=true ;; # -d: コンテナを削除
    \?)
      echo "使い方: $0 [-s] [-d]"
      exit 1
      ;;
  esac
done

# 既存のコンテナを強制停止
if [ "$STOP_CONTAINER" = "true" ]; then
  sudo docker stop -t 0 tg-nginx # -t 0: 強制停止
fi

# 既存のコンテナを削除
if [ "$REMOVE_CONTAINER" = "true" ]; then
  sudo docker rm -f tg-nginx # -f: 強制削除
fi

# Dockerコンテナの起動
sudo docker run -d -p 80:80 --name tg-nginx tg-nginx

# 起動成功メッセージ
if [ $? -eq 0 ]; then
  echo "Dockerコンテナの起動が成功しました。"
else
  echo "Dockerコンテナの起動に失敗しました。"
  exit 1
fi

# 起動したコンテナを表示
echo "起動したコンテナ:"
sudo docker ps --filter name=tg-nginx