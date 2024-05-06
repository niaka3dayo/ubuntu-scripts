#!/bin/bash

# Update the system
sudo apt-get update && sudo apt-get upgrade -y

# Set up Japanese environment
sudo apt-get install -y language-pack-ja
sudo update-locale LANG=ja_JP.UTF-8

# Install basic packages
sudo apt-get install -y build-essential git curl wget unzip

# Set the timezone
sudo timedatectl set-timezone Asia/Tokyo

echo "WSL initial setup is complete. Please restart the system."
