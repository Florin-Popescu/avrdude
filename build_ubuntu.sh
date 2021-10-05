#!/bin/bash

./bootstrap
./configure

make all -j$(nproc)
make install
