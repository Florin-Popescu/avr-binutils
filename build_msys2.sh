#!/bin/bash

INSTALL_DIR=/c/avr

mkdir build
cd build

PATH=$PATH:$INSTALL_DIR/bin
export PATH

CC=x86_64-w64-mingw32-gcc \
CFLAGS=-D__USE_MINGW_ACCESS  \
../configure \
--prefix=$INSTALL_DIR \
--target=avr \
--disable-nls

make all -j $NUMBER_OF_PROCESSORS
make install
