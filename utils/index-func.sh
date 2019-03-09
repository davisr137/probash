#!/bin/bash

# Return position of one string inside another

_index() #@ Store position of $2 in $1 in $_INDEX
{
    local idx
    case $1 in
        "")  _INDEX=0; RETURN 1 ;; # string is empty
        *"$2"*) # extract up to beginning of matching portion
                idx=${1%%"$2"*}
                # the starting position is one more than length
                _INDEX=$(( ${#idx}+1 )) ;;
        *) _INDEX=0; return 1 ;; # pattern not found
    esac
}

index()
{
    _index "$@"
    printf "%d\n" "$_INDEX"
}
