#!/bin/bash

# Download Composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"

# Run Composer installer
php composer-setup.php

# Remove Composer installer
rm composer-setup.php

# Move Composer binary to global location
sudo mv composer.phar /usr/local/bin/composer

# Check Composer version
composer --version
