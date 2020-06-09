INSTALL_DIR=/home/avr

mkdir build
cd build

PATH=$PATH:$INSTALL_DIR/bin
export PATH

CFLAGS=-D__USE_MINGW_ACCESS  \
../configure \
--prefix=$INSTALL_DIR \
--target=avr \
--disable-nls

make all -j $NUMBER_OF_PROCESSORS
make install
