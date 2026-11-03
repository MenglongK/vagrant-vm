#!/bin/bash
# load file function-demo.sh
if [ -f "function-demo.sh" ]; then
    source function-demo.sh
else 
    echo "File not found!"
    exit 1 # code will not continue if 
fi
echo "This is a $0 for our project"
echo -e "\n"

# calling function from other file
welcome Menglong
echo -e "\n"
check_service docker