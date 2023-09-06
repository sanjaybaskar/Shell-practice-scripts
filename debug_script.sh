#!/bin/bash

# Debugging the script file using the set -x and set -e

# To turn off debugging mode, use set +x.

set -x
set -e

name="John"
age=25

echo "Debug: Starting script..."
echo "Debug: Name is $name"
echo "Debug: Age is $age"

result=$((age * 2))
echo "Debug: Result is $result"

# Introducing an intentional error to demonstrate set -e
ls /nonexistent_directory

echo "Debug: Script completed."