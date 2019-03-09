#!/bin/bash

_insert_string() #@ USAGE: _insert_string STRING INSERTION [POSITION]
{
    local insert_string_dflt=2                  # default insert location
    local string=$1                             # container string
    local i_string=$2                           # string to be inserted 
    local i_pos=${3:-${insert_string_dflt:-2}}  # insert location
    local left right                            # before and after strings
    left=${string:0:$(( $i_pos - 1))}           # string to left of insert
    right=${string:$(( $i_pos - 1 ))}           # string to right of insert
    _insert_string=$left$i_string$right         # build new string
}

insert_string()
{
    _insert_string "$@" && printf "%s\n" "$_insert_string"
}
