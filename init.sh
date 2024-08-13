#!/bin/bash

# Set variables
ANSIBLE_DIR="/opt/ansible"
GROUP="pals"
USER="pals"

# Check if the directory already exists
if [ ! -d "$ANSIBLE_DIR" ]; then
    # Create the directory
    sudo mkdir -p "$ANSIBLE_DIR"
    echo "Directory $ANSIBLE_DIR created."
else
    echo "Directory $ANSIBLE_DIR already exists."
fi

# Set group ownership
sudo chown -R "$USER":"$GROUP" "$ANSIBLE_DIR"
echo "Ownership set to $USER:$GROUP."

# Set permissions
sudo chmod -R 775 "$ANSIBLE_DIR"
echo "Permissions set to 775 for $ANSIBLE_DIR."

# Verify settings
ls -ld "$ANSIBLE_DIR"
echo "Initialization complete."
