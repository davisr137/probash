#!/bin/bash

# Measure time elapsed from command 'printf 'hello''
TIME="$(sh -c "time printf "hello" &> /dev/null" 2>&1)"
