#!/bin/bash

# Create and save 'Hello, World' script hw
echo echo Hello, world! > $HOME/bpn/bin/hw

# Make script executable
chmod +x $HOME/bpn/bin/hw

# Execute script
bpn/bin/hw
