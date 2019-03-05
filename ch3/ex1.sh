#!/bin/bash

goloop=true

while $goloop
do 
    read number # Read input
    if [ -n "${number//[0-9]}" ] # Check if input is number
    then
        printf "%s must be a number! \n" "$number"
        continue # Go to next iteration
    elif [ $number -gt 30 ]
    then
        printf "%s is greater than 30 \n" "$number"
        continue # Go to next iteration
    elif [ $number -lt 20 ]
    then 
        printf "%s is less than 20 \n" "$number"
        continue # Go to next iteration
    fi
    # Set 'goloop' to false if valid number passed, exiting loop
    goloop=false 
done
