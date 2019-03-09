#!/bin/bash

# Check whether the command line argument is a palindrome
# Spaces and punctuation are ignored

_revstr() # Reverse order of a string
{
    var=$1
    _REVSTR=
    while [ -n "$var" ]
    do 
        temp=${var%?}
        _REVSTR=$_REVSTR${var#"$temp"}
        var=$temp
    done
}

# Check whether input string is a palindrome
# Ignore punctuation
palindrome()
{
    # Check input is not empty
    if [ -z "$1" ] 
    then
        return 2
    fi
    s=$1
    s=$(echo $s | tr -d '[:punct:]') # Remove punctuation
    _revstr "$s"
    # Check if palindrome
    if [ "$s" == "$_REVSTR" ]
    then
        _PALINDROME=1
    else
        _PALINDROME=0
    fi
    if [ $# -gt 1 ] # Check if second argument passed
    then
        if [ $2 -eq 1 ] # If second argument equals 1, print message and set return code
        then 
            if [ $_PALINDROME -eq 1 ]
            then
                printf "%s is a palindrome\n" "$1"
                return 0
            else
                printf "%s is not a palindrome\n" "$1"
                return 3
            fi
        fi
    fi
}
