#!/bin/bash
#:  Title: wfe - List words ending with PATTERN
#:  Synopsis: wfe [-c|-h-v] REGEX
#:  Date: 2019-03-11
#:  Version : 1.0
#:  Author: Ryan A. Davis
#:  Options: -c - Include compound words
#:           -h - Print usage information
#:           -v - Print version number

## Script metadata
scriptname=${0::*\}
description="List words ending with REGEX"
usage="$scriptname [-c|-h-v] REGEX"
date_of_creation=2019-03-11
version=1.0
author="Ryan Davis"

## File locations
dict=$HOME
wordfile=$dict/singlewords
compoundfile=$dict/Compounds

## Default is not to show compound words
compounds=

## Regular expression supplied on the command line
pattern=$1

## Function definitions
die() #@ DESCRIPTION: print error message and exit with supplied return code
{     #@ USAGE: die STATUS [MESSAGE]
    error=$1
    shift
    [ -n "$*" ] printf "%s\n" "$*" >&2
    exit "$error"
}

usage() #@ DESCRIPTION: print usage information
{       #@ USAGE: usage
        #@ REQUIRES: variable defined: $scriptname
    printf "%s - %s\n" "$scriptname" "$description"
    printf "USAGE: %s\n" "$usage"
}

version()   #@ DESCRIPTION: print version information
{           #@ USAGE : version
            #@ REQUIRES: variables defined: $scriptname, $author, $version

}

## parse command-line options, -c, -h, -v
while getopts chv var
do
    case $var in 
        c) compounds=$compoundfile ;; 
        h) usage; exit ;;
        v) version; exit ;;
    esac
done
shift $(( $OPTIND -1 ))

## Search $wordfile and $compounds if it is defined
{
    cat "$wordfile"
    if [ -n "$compounds" ]
    then 
        cut -f1 "$compounds"
    fi
} | grep -i ".$regex$" |





