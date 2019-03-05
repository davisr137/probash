#!/bin/bash

# Write to file 'FILENAME'
printf "%s\n" "$RANDOM" "$RANDOM" "$RANDOM" "$RANDOM" | tee FILENAME

# Read to variable var
var=$(echo $(cat FILENAME))
