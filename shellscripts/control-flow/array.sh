#!/bin/bash

# declare empty array
declare -a my_array
my_array="rithy"
echo "Test declare empty array: ${my_array}" 
# compound assignment
all_users=("james" "koko" "bona" "piseth")
# append value to array
all_users+=("oudom" "ratana")
echo "First user: ${all_users[0]}"
echo "Array length is: ${#all_users[@]}"

# loop all users
echo -e "\nLoop all users!!!"
for ((i=0;i<${#all_users[@]};i++))
do
    echo "Username: ${all_users[i]}"
done

# Using for item in
echo -e "\nUsing for item in..."
for name in ${all_users[@]}
do
    echo "Username: $name"
done