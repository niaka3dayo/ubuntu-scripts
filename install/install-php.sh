#!/bin/bash

# Specify PHP version (e.g. 8.2)
PHP_VERSION="8.2"

# Install PHP and necessary modules
sudo apt-get update
sudo apt-get install -y software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install -y php$PHP_VERSION php$PHP_VERSION-cli php$PHP_VERSION-fpm php$PHP_VERSION-xml php$PHP_VERSION-mbstring php$PHP_VERSION-mysql php$PHP_VERSION-zip php$PHP_VERSION-gd php$PHP_VERSION-curl

# Check PHP version
php -v
