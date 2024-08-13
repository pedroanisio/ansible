#!/bin/bash

# Update package list
sudo apt-get update

# Install Ansible
sudo apt-get install -y ansible

# Check if Ansible is installed
if dpkg -l | grep -q ansible; then
    echo "Ansible installation was successful."
else
    echo "Ansible installation failed. Please check your package manager settings."
    exit 1
fi

# List installed Ansible packages
sudo apt list --installed | grep ansible
