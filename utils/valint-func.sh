#!/bin/bash

# Check for valid integer

valint() #@ USAGE: valint INTEGER
    case ${1#-} in          # Leading hyphen removed to accept negative numbers
        *[!0-9]*) false;;   # String contains a non-digit character
        *) true ;;          # The whole number, and nothing but the number
    esac
