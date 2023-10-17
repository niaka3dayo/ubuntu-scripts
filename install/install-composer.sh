#!/bin/bash

# Composerをダウンロード
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"

# Composerインストーラーを実行
php composer-setup.php

# Composerインストーラーを削除
rm composer-setup.php

# Composerバイナリをグローバルに移動
sudo mv composer.phar /usr/local/bin/composer

# Composerバージョンを確認
composer --version
