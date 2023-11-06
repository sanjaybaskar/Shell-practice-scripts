# write a shell script, you need to prompt file path from the user, if the file exists then it should go to next prompt. 
# in next prompt it should ask for word. if the file is not exist I should exit, same for word as well

#!/bin/bash

read -p "Enter a filename: " filename

if [[ -f $filename ]] ; then
echo "The file $filename exists."
read -p "Enter the word you want to find: " word
grep "$word" "$filename"
else
echo "The file $filename does not exist."
fi

# Alternate script

read -p "Enter the filename: " filename2

if [[ -f $filename2]]
then 
echo "The file $filename2 exists"
else
echo "File doesn't exists"
fi

