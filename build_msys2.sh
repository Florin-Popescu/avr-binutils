#!/bin/bash

INSTALL_DIR=/c/avr

mkdir build
cd build

PATH=$PATH:$INSTALL_DIR/bin
export PATH

../configure \
--prefix=$INSTALL_DIR \
--target=avr \
--disable-nls

make all -j $NUMBER_OF_PROCESSORS
make install
