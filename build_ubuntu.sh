#!/bin/bash

chmod +x ./bootstrap
./bootstrap

chmod +x ./configure
./configure

make all -j$(nproc)
make install
