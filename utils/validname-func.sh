#!/bin/bash

# Check for a valid variable or function name

validname() #@ USAGE: validname varname
    case $1 in
        # Does not belong with letter or underscore
        # Contains something not letter, number, underscore
        [!a-zA-Z_]* | *[!a-zA-Z0-9_]* ) return 1 ;;
    esac
