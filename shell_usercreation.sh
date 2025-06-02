#!/bin/bash

read -p "Enter username: " USERNAME
PASSWORD="Password@123"

sudo useradd -m -s /bin/bash $USERNAME
echo "$USERNAME:$PASSWORD" | sudo chpasswd

echo "✅ User $USERNAME created with password: $PASSWORD"