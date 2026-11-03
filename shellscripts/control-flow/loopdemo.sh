#!/bin/bash
echo "Using for loop!!!"
for ((i=0; i<=10; i++))
do
    echo "${i}. Hello from for loop"
done

echo -e "\nUsing while loop!!!"
counter=1
while ((counter <=10))
do
    echo "${counter}. Hello from while loop"
    ((++counter))
done