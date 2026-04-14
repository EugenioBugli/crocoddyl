#!/bin/bash
set -euxo pipefail

cmake -G Ninja ${CMAKE_ARGS} \
    -DCMAKE_BUILD_TYPE=Release \
    -DBUILD_BENCHMARK=OFF \
    -DBUILD_EXAMPLES=OFF \
    -DBUILD_TESTING=OFF \
    -DBUILD_WITH_IPOPT=OFF \
    -DINSTALL_DOCUMENTATION=OFF \
    -B build \
    -S .

cmake --build build -j4
cmake --install build
