#!/bin/bash

# function has parameter
welcome(){
    # use local can use only this scope
    local username=$1
    local age=$2
    echo "Welcome!! ${username^^} to the systems"
    echo "Age is: ${age}"
}

# function doesn't has parameter
function greeting(){
    echo "Welcome to shellscripts"
    echo "User: $USER"
}
greeting
welcome "james" 100