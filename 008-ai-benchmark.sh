#!/bin/sh

# https://lambdalabs.com/blog/2080-ti-deep-learning-benchmarks/
git clone https://github.com/lambdal/lambda-tensorflow-benchmark.git --recursive
cd lambda-tensorflow-benchmark
./benchmark.sh 0,1 10 # ./benchmark.sh gpu_index num_iterations
./report.sh <cpu>-<gpu>.logs num_iterations
