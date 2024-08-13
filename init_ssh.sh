#!/bin/bash

# Variables
USER="pals"
HOST="localhost"
SSH_DIR="$HOME/.ssh"
KEY_FILE="$SSH_DIR/id_rsa"

# Step 1: Generate SSH Key Pair (if it doesn't exist)
if [ ! -f "$KEY_FILE" ]; then
    echo "Generating SSH key pair..."
    ssh-keygen -t rsa -b 4096 -f "$KEY_FILE" -N "" -C "$USER@$HOST"
    echo "SSH key pair generated at $KEY_FILE."
else
    echo "SSH key pair already exists at $KEY_FILE."
fi

# Step 2: Copy the SSH key to the localhost for user 'pals'
echo "Copying SSH key to $USER@$HOST..."
ssh-copy-id -i "$KEY_FILE.pub" "$USER@$HOST"

# Step 3: Test the SSH connection
echo "Testing SSH connection to $USER@$HOST..."
ssh "$USER@$HOST" "echo 'SSH setup complete. You are now connected to $HOST as $USER.'"

if [ $? -eq 0 ]; then
    echo "SSH connection successful. You can now connect to $USER@$HOST without a password."
else
    echo "Error: SSH connection failed. Please check your SSH configuration."
fi
