#!/bin/bash

# Dockerデーモンを停止します
sudo systemctl stop docker

# Dockerエンジンおよび関連パッケージをアンインストールします
sudo apt-get purge -y docker-ce docker-ce-cli containerd.io

# Dockerのパッケージリストを削除します
sudo rm /etc/apt/sources.list.d/docker.list

# DockerのGPGキーを削除します
sudo rm /usr/share/keyrings/docker-archive-keyring.gpg

# システムの残りの不要なパッケージと依存関係を削除します
sudo apt-get autoremove -y
sudo apt-get autoclean -y

# Dockerディレクトリを削除します
sudo rm -rf /var/lib/docker

# dockerグループを削除します
sudo delgroup docker

