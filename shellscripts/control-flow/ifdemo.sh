#!/bin/bash
read -p "Enter your age: " age
echo "Your age is $age"
if [[ $age -ge 18 ]]
    then echo "You are able to vote"
    else echo "You are not able to vote"
fi

# C style if statement
echo -e "\nC style if statement with shellscript"
if (($age >= 18))
    then echo "You are able to vote"
    else echo "You are not able to vote"
fi