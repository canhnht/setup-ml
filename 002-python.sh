# Python + Pip
sudo apt -y install python3-dev python3-pip

# Virtualenvs
pip3 install virtualenv virtualenvwrapper

# Init bashrc
export WORKON_HOME=~/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source ~/.local/bin/virtualenvwrapper.sh
export CUDA_DEVICE_ORDER=PCI_BUS_ID
export CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7
export NCCL_SOCKET_IFNAME=ens3
export OMP_NUM_THREADS=32
