#!/bin/sh

sudo apt-get install libreadline-dev libgfortran-4.8-dev libopenblas-dev

# http://torch.ch/docs/getting-started.html
# https://www.kadamwhite.com/archives/2018/install-torch-7-and-cuda-9-1-on-ubuntu-18-04-lts
git clone https://github.com/torch/distro.git ~/torch --recursive
vi install-deps # -> Comment line install python-software-properties
cd ~/torch; bash install-deps;

# sudo su
export TORCH_CUDA_ARCH_LIST="7.0"
export TORCH_NVCC_FLAGS="-D__CUDA_NO_HALF_OPERATORS__"
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

# Setup CUDNN
git clone https://github.com/soumith/cudnn.torch.git -b R7 && cd cudnn.torch && luarocks make cudnn-scm-1.rockspec
