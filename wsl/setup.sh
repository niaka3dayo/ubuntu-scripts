#!/bin/bash

# システムを更新
sudo apt-get update && sudo apt-get upgrade -y

# 日本語環境をセットアップ
sudo apt-get install -y language-pack-ja
sudo update-locale LANG=ja_JP.UTF-8

# 基本的なパッケージをインストール
sudo apt-get install -y build-essential git curl wget unzip

# タイムゾーンを設定
sudo timedatectl set-timezone Asia/Tokyo

echo "WSLの初期セットアップが完了しました。システムを再起動してください。"
