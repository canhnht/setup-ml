#!/bin/sh

sudo apt-get install libreadline-dev

# http://torch.ch/docs/getting-started.html
git clone https://github.com/torch/distro.git ~/torch --recursive
cd ~/torch; bash install-deps;
./install.sh

# Refresh env
source ~/.bashrc

# Uninstall
rm -rf ~/torch

# Install lua packages
# run luarocks WITHOUT sudo
luarocks install image
luarocks list
th

# Install loadcaffe https://github.com/szagoruyko/loadcaffe
sudo apt-get install libprotobuf-dev protobuf-compiler
luarocks install loadcaffe

