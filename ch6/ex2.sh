#!/bin/bash

_max3a() { #@ Sort 3 integers and store in $_MAX3, $_MID3, $_MIN3

    # Verify all three input arguments are integers    
    argint=true
    for var in "$@"
    do 
        case $var in 
            # reject the following:
            #   empty string
            #   anything other than digits
            "" | *[!0-9]*) return 7 ;;
        esac
    done

    [ $# -ne 3 ] && return 5 # Check there are exactly three arguments
    [ $1 -gt $2 ] && { set -- $2 $1 $3; }
    [ $2 -gt $3 ] && { set -- $1 $3 $2; }
    [ $1 -gt $2 ] && { set -- $2 $1 $3; }
    _MAX3=$3
    _MID3=$2
    _MIN3=$1
}
