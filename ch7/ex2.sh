#!/bin/bash

# Convert first letter of string to lower case

to_lower()
{
    case $1 in
        *[!a-zA-Z]*) return 1 ;; # Characters must be alphabetic
        *) var=$1 ;;
    esac
    var_lower=${var,,} # First letter
    _LOWER=${var_lower:0:1}${var:1} # Combine first letter with remainder of string
}
