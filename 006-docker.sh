# https://docs.docker.com/install/linux/docker-ce/ubuntu/

# Uninstall old versions
sudo apt-get remove docker docker-engine docker.io containerd runc

# Update apt
sudo apt-get update

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

# Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Search last 8 characters of fingerprint
sudo apt-key fingerprint 0EBFCD88

# Setup stable repository
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# Update apt
sudo apt-get update

# Install latest Docker engine
sudo apt-get install docker-ce docker-ce-cli containerd.io

# Verify Docker
sudo docker run hello-world

# https://www.tensorflow.org/install/docker

# nvidia-docker https://github.com/NVIDIA/nvidia-docker
# Add the package repositories
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list
sudo apt-get update && sudo apt-get install -y nvidia-container-toolkit
sudo systemctl restart docker
