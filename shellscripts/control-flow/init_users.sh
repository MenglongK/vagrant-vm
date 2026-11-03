#!/bin/bash

# loop create user by auto script
# all_users=("james" "koko" "bona" "piseth")
# set -x # enable debug mode
# for name in ${all_users[@]}
# do
#     sudo useradd --create-home --shell /bin/bash $name
#     echo "${name}:qwer" | sudo chpasswd
#     sudo passwd -e $name
#     echo "$name create successfully!"
# done
# set +x # disable debug mode

create_user(){
all_users=("james" "koko" "bona" "piseth")
for name in ${all_users[@]}
do
    sudo useradd --create-home --shell /bin/bash $name
    echo "${name}:qwer" | sudo chpasswd
    sudo passwd -e $name
    echo "$name create successfully!"
done
}
create_user

delete_user(){
    all_users=("james" "koko" "bona" "piseth")
    for name in ${all_users[@]}
    do
        sudo userdel $name
        echo "$name delete successfully!"
    done
}
delete_user
# CREATE 2 FUNCTION
# function create user
# function delete user
