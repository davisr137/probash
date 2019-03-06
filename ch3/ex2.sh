#!/bin/bash

while :
do
    # Prompt user to enter name of a file
    printf "Please enter the name of a file. \n"
    read filename
    # Break out of loop if filename is valid
    [ -f "$filename" ] && break
done
