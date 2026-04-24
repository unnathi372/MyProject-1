#!/bin/bash

# Add common binary paths to the current script's session
export PATH=$PATH:/usr/sbin:/sbin

# Check if Nginx binary exists in the PATH
if command -v nginx > /dev/null 2>&1; then
    echo "NGINX is already installed. Skipping installation."
else
    echo "NGINX not found. Starting installation..."
    
    # Update package index
    sudo apt update -y
    
    # Install NGINX package
    sudo apt install nginx -y
    
    # Start the service and enable it to run on boot
    sudo systemctl start nginx
    sudo systemctl enable nginx
    
    echo "NGINX installation complete."
fi

# Verify current service status and print version
echo "Current NGINX status: $(sudo systemctl is-active nginx)"
echo "NGNIX version: $(nginx -v 2>&1)"
