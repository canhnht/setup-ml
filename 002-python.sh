# Python + Pip
sudo apt -y install python3-dev python3-pip

# Virtualenvs
pip3 install virtualenv virtualenvwrapper awscli

# Init bashrc
export WORKON_HOME=~/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source ~/.local/bin/virtualenvwrapper.sh
export CUDA_DEVICE_ORDER=PCI_BUS_ID
export CUDA_VISIBLE_DEVICES=0,1,2
export NCCL_SOCKET_IFNAME=ens3
export OMP_NUM_THREADS=32
export CUDNN_PATH="/usr/local/cuda-9.0/lib64/libcudnn.so.7"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/extras/CUPTI/lib64:/usr/local/cuda-10.0/lib64:/usr/local/cuda-9.0/lib64
export PATH=$PATH:/usr/local/cuda-10.0/bin
