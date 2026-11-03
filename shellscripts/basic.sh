#!/bin/bash
# shebang, hashbank
echo -n "What is your name?:"
read name
echo "Welcome $name" # same as ${name}
echo "Welcome ${name,,}" # lowercase
echo "Welcome ${name^^}" # uppercase
echo "Welcome ${name^}" # capitalize first letter
echo "Welcome ${name,}" # lowercase first letter
echo "Welcome ${#name}" # length of string

# Show the comments output
echo "Current date and time: $(date)"
echo "Current user: $(whoami)"