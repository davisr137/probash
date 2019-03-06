#!/bin/bash

# Take one argument
# Remove number before first '.'
var=${1#*.}

# Remove number after second '.'
var=${var%%.*}

printf "%s\n" "$var"
