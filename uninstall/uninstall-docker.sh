#!/bin/bash

# Stop the Docker daemon
sudo systemctl stop docker

# Uninstall Docker engine and related packages
sudo apt-get purge -y docker-ce docker-ce-cli containerd.io

# Remove Docker package list
sudo rm /etc/apt/sources.list.d/docker.list

# Remove Docker GPG key
sudo rm /usr/share/keyrings/docker-archive-keyring.gpg

# Remove remaining unnecessary packages and dependencies from the system
sudo apt-get autoremove -y
sudo apt-get autoclean -y

# Remove Docker directory
sudo rm -rf /var/lib/docker

# Remove docker group
sudo delgroup docker
