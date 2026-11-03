#!/bin/bash

# 1st command fail, 2nd command will run
echo "File name is $0"
which nginx || {
    echo "Installing nginx..."
    sudo apt update && sudo apt upgrade -y
    sudo apt install nginx -y
}

docker -v &> /dev/null
if [[$? -eq 0]]
then
    echo "docker installed"
else
    echo "docker is not installed"
fi