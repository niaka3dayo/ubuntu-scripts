#!/bin/bash

# グローバルにインストールされたComposerバイナリを削除
sudo rm /usr/local/bin/composer

# もしユーザーローカルにComposerバイナリがインストールされている場合、それも削除
rm $HOME/.composer/bin/composer

# Composerの設定とキャッシュディレクトリを削除
rm -rf $HOME/.composer

# 他の可能なロケーションからComposerを削除
sudo rm /usr/bin/composer

# .bashrcや.bash_profileからComposerのパスを削除
sed -i '/.composer\/bin/d' ~/.bashrc
sed -i '/.composer\/bin/d' ~/.bash_profile

# .bashrcと.bash_profileを再読み込み
source ~/.bashrc
source ~/.bash_profile
