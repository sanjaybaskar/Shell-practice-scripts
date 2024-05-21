# A shell script to check the network connectivity of a hostname

#! /bin/bash

HOST="google.com"

#output file

OUTPUT_FILE="/home/ubuntu/output.txt"

#check the host is reachable or not

if ping -c 1 $HOST &> /dev/null
then
    echo "$HOST is reachable" >> $OUTPUT_FILE
else
    echo "$HOST is not reachable" >> $OUTPUT_FILE
fi 

