#!/bin/bash

function welcome(){
    local name="$1"
    echo "Welcome $1 to the system"
    echo "Thanks you"
    echo "File name is: $0"
}
# welcome Menglong

check_service(){
    local service_name="$1"
    if systemctl is-active --quiet "${service_name}";
    then
        echo "Service: ${service_name} is running"
    else
        echo "Service: ${service_name} is NOT running"
    fi
}
# check_service nginx