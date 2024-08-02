# Method -1 

#! /bin/bash

read -sp "Enter the Password: " PASSWORD
echo 
echo "Password is masked"



# Method - 2

#! bin/bash

# Disable echo

stty -echo

# Read Password

printf "Enter your password: "

read PASSWORD 

# Re enable echo

stty echo

# Print new line for cleanliness

echo

echo "Password entered is masked"

