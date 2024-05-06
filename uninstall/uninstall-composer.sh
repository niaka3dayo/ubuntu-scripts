#!/bin/bash

# Remove globally installed Composer binary
sudo rm /usr/local/bin/composer

# If Composer binary is installed locally for the user, remove it as well
rm $HOME/.composer/bin/composer

# Remove Composer's configuration and cache directory
rm -rf $HOME/.composer

# Remove Composer from other possible locations
sudo rm /usr/bin/composer

# Remove Composer's path from .bashrc and .bash_profile
sed -i '/.composer\/bin/d' ~/.bashrc
sed -i '/.composer\/bin/d' ~/.bash_profile

# Reload .bashrc and .bash_profile
source ~/.bashrc
source ~/.bash_profile
