#! /bin/bash

# To find the number is a Prime number or not

read -p "Enter the number: " num

for ((i=2;i<=num/2;i++ ))
do 
answer=$(( num%i ))
if [ $answer -eq 0 ]
then 
echo "$num is not a prime number"
exit 0
fi
done
echo "$num is a Prime number"
