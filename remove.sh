#!/bin/bash

# 全てのコンテナIDを取得
container_ids=$(sudo docker ps -aq)

# コンテナが存在する場合のみ削除
if [ -n "$container_ids" ]; then
  # 全てのコンテナを強制削除
  sudo docker rm -f $container_ids

  # 削除成功メッセージ
  if [ $? -eq 0 ]; then
    echo "全てのDockerコンテナを削除しました。"
  else
    echo "Dockerコンテナの削除に失敗しました。"
    exit 1
  fi
else
  echo "削除するDockerコンテナはありません。"
fi