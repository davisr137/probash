#!/bin/bash

rangecheck() #@ USAGE: rangecheck int [low [high]]
    if [ "$1" -lt ${2:-10} ] # Low end of range defaults to 10
    then 
        return 1 # Number too low
    elif [ "$1" -gt ${3:-20} ] # High end of range defaults to 20
    then
        return 2 # Number too high
    else
        return 0 # Number within range
    fi
