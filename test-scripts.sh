#! /bin/bash
# Get user input using prompting

read -p "Enter your name: " name
echo "Hello $name ! nice to meet you.."

# Conditional statments

num = 10

if [$num -gt 10]; then
    echo "Number is greater than 10"
elif [$num -eq 10]; then
    echo "Number is equal to 10"
else
    echo"Number is less than 10"
fi

