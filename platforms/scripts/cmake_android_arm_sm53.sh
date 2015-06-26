#!/bin/sh
cd `dirname $0`/..

mkdir -p build_android_arm_sm53
cd build_android_arm_sm53

cmake -DBUILD_TESTS=OFF -DBUILD_PERF_TESTS=OFF -DENABLE_DYNAMIC_CUDA=ON -DWITH_CUBLAS=ON -DWITH_OPENCL=OFF -DCUDA_ARCH_BIN=53 -DCUDA_TOOLKIT_ROOT_DIR=~/NVPACK/cuda-7.0/targets/armv7-linux-androideabi -DCMAKE_BUILD_WITH_INSTALL_RPATH=ON -DCMAKE_TOOLCHAIN_FILE=../android/android.toolchain.cmake $@ ../..
