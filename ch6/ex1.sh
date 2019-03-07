#!/bin/bash

# Rewrite 'isvalidip' using parameter expansion instead of
# changing IFS

# Check argument for valid dotted-quad IP Address
isvalidip2() #@ USAGE: isvalidip DOTTED-QUAD
{
    case $1 in 
        # reject the following:
        #   empty string
        #   anything other than digits and dots
        #   anything not ending in a digit
        "" | *[!0-9.]* | *[!0-9]) return 1 ;;
    esac

    var=$1
    unset ipn # Array to represent individual numbers of IP address
    until [ "$var" == "${var#*.}" ]
    do
        ipn[${#ipn[@]}]=${var%%.*} # Number before first '.' 
        var=${var#*.} # Substring after first '.'
    done 
    ipn[${#ipn[@]}]=$var    

    [ ${#ipn[@]} -eq 4 ] && # Must be four numbers
    # A default of 666 (which is invalid) is used if the parameter is empty
    # All four parameters must pass the test
    [ ${ipn[0]:-666} -le 255 ] && [ ${ipn[1]:-666} -le 255 ] &&
    [ ${ipn[2]:-666} -le 255 ] && [ ${ipn[3]:-666} -le 255 ]
}
