sudo apt-get update
sudo apt-get upgrade

# Install NVIDIA driver
# Check video driver
sudo lshw -c video | grep 'configuration'

# https://hackernoon.com/ubuntu-18-04-deep-learning-environment-setup-345ba0b11892
# https://www.nvidia.com/download/driverResults.aspx/138279/en-us
# https://www.nvidia.com/en-us/drivers/unix/
# https://medium.com/@jelaniwoods/how-to-install-nvidia-drivers-ubuntu-556c7223d40e
# https://medium.com/better-programming/how-to-install-nvidia-drivers-and-cuda-10-0-for-rtx-2080-ti-gpu-on-ubuntu-16-04-18-04-ce32e4edf1c0
# sudo ./NVIDIA-Linux-x86_64–410.57.run —-no-x-check
sudo ./NVIDIA-Linux-x86_64-440.31.run --no-x-check
sudo nvidia-uninstall
sudo reboot
nvidia-settings



# https://www.tensorflow.org/install/gpu
# Install CUDA Toolkit
# Add NVIDIA package repositories
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-repo-ubuntu1804_10.0.130-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1804_10.0.130-1_amd64.deb
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub
sudo apt-get update
wget http://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1804/x86_64/nvidia-machine-learning-repo-ubuntu1804_1.0.0-1_amd64.deb
sudo apt install ./nvidia-machine-learning-repo-ubuntu1804_1.0.0-1_amd64.deb
sudo apt-get update

# Install NVIDIA driver
sudo apt-get install --no-install-recommends nvidia-driver-418
# Reboot. Check that GPUs are visible using the command: nvidia-smi

# Install development and runtime libraries (~4GB)
sudo apt-get install --no-install-recommends \
    cuda-10-0 \
    libcudnn7=7.6.2.24-1+cuda10.0  \
    libcudnn7-dev=7.6.2.24-1+cuda10.0


# Install TensorRT. Requires that libcudnn7 is installed above.
sudo apt-get install -y --no-install-recommends libnvinfer5=5.1.5-1+cuda10.0 \
    libnvinfer-dev=5.1.5-1+cuda10.0


# Install cuDNN
# https://developer.nvidia.com/cudnn
# https://developer.nvidia.com/rdp/cudnn-download
sudo apt install -y nvidia-cuda-toolkit
nvcc -V

# Throttle GPU power down from 250W to 180W
sudo nvidia-smi -pl 180
