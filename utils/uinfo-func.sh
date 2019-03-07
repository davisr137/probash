#!/bin/bash

# Print information about the environment

uinfo() #@ USAGE: uinfo [file]
{
  printf "%12s: %s\n" \
      USER      "${USER:-No value assigned}" \
      PWD       "${PWD:-No value assigned}" \
      COLUMNS   "${COLUMNS:-No value assigned}" \
      LINES     "${LINES:-No value assigned}" \
      SHELL     "${SHELL:-No value assigned}" \
      HOME      "${HOME:-No value assigned}" \
      TERM      "${term:-NO VALUE ASSIGNED}"
} > ${1:-/dev/fd/1}
