#! /bin/bash

# Get user input using prompting

read -p "Enter your name: " name
echo "Hello $name ! nice to meet you.."

-----------------------------------------------------------------

# Conditional statements 

num=10

if [ $num -gt 10 ]; then
    echo "Number is greater than 10"
elif [ $num -eq 10 ]; then
    echo "Number is equal to 10"
else
    echo"Number is less than 10"
fi

--------------------------------------------------------------------

# Case statements

# Example 1

fruit="apple"

case $fruit in
    "apple")  echo "It's an apple"  ;;
    "banana")  echo "It's a banana" ;;
    *)
    echo "unknown fruit" ;;
esac

# Example 2 using user input

echo "Which color do you like best?"
echo "1 - Blue"
echo "2 - Red"
echo "3 - Yellow"
echo "4 - Green"
echo "5 - Orange"
read -p "Enter the Color: " color
case $color in
  1) echo "Blue is a primary color.";;
  2) echo "Red is a primary color.";;
  3) echo "Yellow is a primary color.";;
  4) echo "Green is a secondary color.";;
  5) echo "Orange is a secondary color.";;
  *) echo "This color is not available. Please choose a different one.";; 
esac

-------------------------------------------------------------------

# For loop statment example

for i in {1..20}; do
    echo "number: $i"
done

# Example 2 

fruits=("apple" "banana" "pineapple" "cherry")

for fruit in "${fruits[@]}";do
    echo "Fruit: $fruit"
done

# Example 3

fruits=("apple" "banana")
fruits+=("pineapple" "cherry")

unset fruits[1]

for fruit in "${fruits[@]}";do
    echo "Fruits: $fruit"
done

--------------------------------------------------------------------

# While loop statement example

counter=1 

while [ $counter -le 5 ]; do
    echo "Count: $counter"
    counter=$((counter+1))
done

echo "loop finished"

# until statement example 

counter_var=1 

until [ $counter_var -ge 5 ]; do
    echo "Count: " $counter_var
    counter_var=$((counter_var+1))
done    

echo "Until loop finished"
