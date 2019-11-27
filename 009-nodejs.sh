#!/bin/sh

# Install nvm (https://github.com/creationix/nvm)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.1/install.sh | bash
source ~/.bashrc
source $NVM_DIR/nvm.sh # This loads nvm
command -v nvm

# Install latest version of node
nvm install lts/*
