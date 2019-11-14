#!/bin/sh
# https://linuxconfig.org/how-to-benchmark-your-linux-system

# Sysbench
sudo apt install sysbench
## CPU
sysbench --test=cpu run
## Memory
sysbench --test=memory run
## I/O
sysbench --test=fileio --file-test-mode=seqwr run


# Hardinfo
sudo apt install hardinfo
## -> Open HardInfo GUI



# Phoronix
# https://linuxconfig.org/benchmark-your-graphics-card-on-linux
## Install
sudo apt install gdebi-core
sudo gdebi phoronix-test-suite_*.deb

## List tests
phoronix-test-suite list-tests

## Stress test CPU
phoronix-test-suite install john-the-ripper
phoronix-test-suite run john-the-ripper

# OpenCL performance on CPU and GPU
phoronix-test-suite install luxmark
phoronix-test-suite run luxmark

# Gzip compression
phoronix-test-suite install compress-gzip
phoronix-test-suite run compress-gzip


# GPU stress test
# https://www.pcsuggest.com/gpu-benchmarking-and-stress-testing-in-linux/
./GpuTest /test=fur /width=1024 /height=640


# LambdaLabs
## https://lambdalabs.com/blog/perform-gpu-and-cpu-stress-testing-on-linux/
## Stress test CPU, IO, HDD
sudo apt-get install -y stress htop iotop lm-sensors
stress --cpu `nproc` --vm `nproc` --vm-bytes 1GB --io `nproc` --hdd `nproc` --hdd-bytes 1GB --timeout 60s

## Stress test GPU
git clone https://github.com/wilicc/gpu-burn
cd gpu-burn
make
./gpu_burn 60 # will run gpu_burn for 60 seconds

## Monitor
htop
sudo iotop
watch sudo sensors
watch nvidia-smi
