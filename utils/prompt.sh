#!/bin/bash

# Prompt the user to continue or not

read -sn1 -p "Continue (y/n?) " var
case ${var^} in  # convert $var to uppercase
    Y) ;;
    N) printf "\n%s\n" "Good bye."
       exit
       ;;
esac
