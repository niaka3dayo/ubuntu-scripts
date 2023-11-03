#!/bin/bash

# バージョン番号を指定 (e.g.: 20.9.0)
NODE_VERSION="20.9.0"

# nvmをインストール
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

# nvm環境をロード
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# 指定されたバージョンのNode.jsをインストール
nvm install $NODE_VERSION

# 指定されたバージョンのNode.jsを使用するように設定
nvm use $NODE_VERSION

# npmの最新バージョンをインストール
npm install -g npm@latest

# Node.jsのバージョンを確認
node -v
