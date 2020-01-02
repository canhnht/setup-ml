sudo apt update -y

# Essentials
sudo apt install -y git build-essential sshfs nmon htop pigz p7zip-full pwgen cmake software-properties-common curl screen

# Git
git config --global credential.helper store
git config --global user.name "ACworks-AI-BlueNguyen"
git config --global user.email "thanhcanh@acworks.co.jp"

# GCC
sudo apt-get update && \
sudo apt-get install build-essential software-properties-common -y && \
sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y && \
sudo apt-get update && \
sudo apt-get install gcc-snapshot -y && \
sudo apt-get update && \
sudo apt-get install gcc-6 g++-6 -y && \
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-6 60 --slave /usr/bin/g++ g++ /usr/bin/g++-6
gcc --version

# sensors
sudo apt-get install lm-sensors
sudo sensors-detect
