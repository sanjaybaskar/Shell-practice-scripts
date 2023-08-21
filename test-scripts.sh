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

# Case statements

# Example 1

fruit ="apple"

case $fruit in
    "apple")
    echo "It's an apple"
    ;;
    "banana")
    echo "It's a banana"
    ;;
    *)
    echo "unknown fruit"
    ;;
esac

# Example 2 using user input

echo "Which color do you like best?"
echo "1 - Blue"
echo "2 - Red"
echo "3 - Yellow"
echo "4 - Green"
echo "5 - Orange"
read color;
case $color in
  1) echo "Blue is a primary color.";;
  2) echo "Red is a primary color.";;
  3) echo "Yellow is a primary color.";;
  4) echo "Green is a secondary color.";;
  5) echo "Orange is a secondary color.";;
  *) echo "This color is not available. Please choose a different one.";; 
esac

# loop statments

for i in {1..20}; do
    echo "number: $i"
done


