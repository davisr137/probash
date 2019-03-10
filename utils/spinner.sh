#!/bin/bash

spinner="\|/-"              ## spinner
chars=1                     ## number of characters to disply
delay=0.15                  ## time in seconds between characters
prompt="press any key..."   ## user prompt
clearline="\e[K"            ## clear to end of line (ANSI terminal)
CR="\r"                     ## carriage return

## loop until user presses a key
until read -sn1 -t$delay -p "$prompt" var
do
    printf "  %.${chars}s$CR" "$spinner"
    temp=${spinner#?}               ## remove first character from $spinner
    spinner=$temp${spinner%"$temp"} ## add it to the end
done
printf "$CR$clearline"
