# Nginx Dockerコンテナ Step1

このリポジトリは、Nginx Dockerコンテナの構築と実行に必要なファイルを提供します。

## 前提条件

* Dockerがインストールされていること
* Raspberry Pi 5などのLinux環境

## セットアップ

1.  リポジトリをクローンします。

    ```bash
    git clone <リポジトリのURL>
    cd <リポジトリのディレクトリ>
    ```

2.  `sites-available/default`ファイルを編集し、必要に応じてIPアドレス制限の設定します。
3.  必要に応じて、`nginx.conf`ファイルを編集します。
4.  `sites-available/default`から`sites-enabled/default`へシンボリックリンクを作成します。

    ```bash
    ln -s sites-available/default sites-enabled/default
    ```

## ビルド

以下のコマンドを実行して、Dockerイメージをビルドします。

```bash
./build.sh
```

## 実行

以下のコマンドを実行して、Dockerイメージをビルドします。

```bash
./run.sh
```