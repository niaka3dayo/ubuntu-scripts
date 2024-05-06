#!/bin/bash

# List up installed PHP packages
PHP_PACKAGES=$(dpkg -l | grep php | awk '{print $2}' | tr '\n' ' ')

# Uninstall PHP and related packages
sudo apt-get purge -y $PHP_PACKAGES

# Remove PHP configuration and session directories
sudo rm -rf /etc/php/
sudo rm -rf /var/lib/php/

# Remove PPA repository (if using Ondřej Surý's PPA)
sudo add-apt-repository --remove ppa:ondrej/php
sudo apt-get update

# Remove remaining unnecessary packages and dependencies from the system
sudo apt-get autoremove -y
sudo apt-get autoclean -y
