#!/bin/bash

# For Ubuntu 16.04

cd /opt
sudo wget https://www.python.org/ftp/python/3.6.3/Python-3.6.3.tgz
sudo tar -xvf Python-3.6.3.tgz
cd Python-3.6.3
sudo ./configure
sudo make
sudo make install
sudo apt-get install zlib1g-dev
