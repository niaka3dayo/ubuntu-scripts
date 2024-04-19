#!/bin/bash

# nvmの最新バージョンを取得してインストール
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash

# nvm環境をロード
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Node.jsの最新LTS版を取得してインストール
nvm install --lts

# 最新LTS版のNode.jsを使用するように設定
nvm use --lts

# npmの最新バージョンをインストール
npm install -g npm@latest
npm install -g pnpm@latest

# Node.jsのバージョンを確認
node -v
