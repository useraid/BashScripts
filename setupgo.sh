#!/bin/bash

# Set the version variable to the latest binary version from https://go.dev/doc/install

# Version Setup - Default - 19.2
ver=19.2

# Removing all installation 
rm -rf /usr/local/go

# Fetching the binaries
wget https://dl.google.com/go/go1.$ver.linux-amd64.tar.gz

# Unpacking the binary
tar -C /usr/local -xzf go1.$ver.linux-amd64.tar.gz

# Adding GO to path
export PATH=$PATH:/usr/local/go/bin