#!/bin/bash

# Reverse the order of a string; store results in _REVSTR

_revstr() #@ USAGE: revstr STRING
{
    var=$1
    _REVSTR=
    while [ -n "$var" ]
    do 
        temp=${var#?}
        _REVSTR=$temp${var%"$temp"}
        var=$temp
    done
}
