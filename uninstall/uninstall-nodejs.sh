#!/bin/bash

# nvmの環境変数をロード
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# インストールされているすべてのNode.jsバージョンをアンインストール
nvm ls | grep -o -E 'v[0-9]+\.[0-9]+\.[0-9]+' | while read version; do
  nvm uninstall $version
done

# nvm自体をアンインストール
rm -rf $HOME/.nvm

# .bashrcや.bash_profileからnvmのロードスクリプトを削除
sed -i '/nvm.sh/d' ~/.bashrc
sed -i '/nvm.sh/d' ~/.bash_profile

# システムの残りのNode.jsとnpmをアンインストール（もし、nvm以外の方法でインストールされていた場合）
sudo apt-get purge -y nodejs npm
