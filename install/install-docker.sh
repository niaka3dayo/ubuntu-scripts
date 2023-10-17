#!/bin/bash

# 必要なパッケージを更新およびインストール
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg lsb-release

# Dockerの公式GPGキーを追加
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# DockerのAPTリポジトリを設定
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Dockerエンジンをインストール
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# 現在のユーザーをdockerグループに追加
sudo usermod -aG docker $USER

# Dockerサービスを起動および有効化
sudo systemctl start docker
sudo systemctl enable docker

# 確認のためDockerのバージョンを表示
docker --version
