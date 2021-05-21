#!/bin/bash

mkdir build
cd build

chmod +x ../configure
../configure \
--target=avr \
--disable-nls

make all -j$(nproc)
make install
