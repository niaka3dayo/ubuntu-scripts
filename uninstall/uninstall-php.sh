#!/bin/bash

# インストールされているPHPパッケージをリストアップします
PHP_PACKAGES=$(dpkg -l | grep php | awk '{print $2}' | tr '\n' ' ')

# PHPと関連パッケージをアンインストールします
sudo apt-get purge -y $PHP_PACKAGES

# PHPの設定とセッションディレクトリを削除します
sudo rm -rf /etc/php/
sudo rm -rf /var/lib/php/

# PPAリポジトリを削除します (もしOndřej SurýのPPAを使用していた場合)
sudo add-apt-repository --remove ppa:ondrej/php
sudo apt-get update

# システムの残りの不要なパッケージと依存関係を削除します
sudo apt-get autoremove -y
sudo apt-get autoclean -y
