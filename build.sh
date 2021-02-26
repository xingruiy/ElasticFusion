#!/bin/bash

# make -C Core/build clean
# make -C GUI/build clean

sudo apt install libjpeg-dev

cmake Core/src -B Core/build #-DCMAKE_BUILD_TYPE=DEBUG
make -C Core/build -j

cmake GUI/src -B GUI/build #-DCMAKE_BUILD_TYPE=DEBUG
make -C GUI/build -j
