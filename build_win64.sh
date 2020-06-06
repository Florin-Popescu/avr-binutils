INSTALL_DIR=/home/avr-binutils

mkdir build
cd build

../configure \
--prefix=$INSTALL_DIR \
--host=x86_64-w64-mingw32 \
--target=avr \
--disable-nls \
--build=`../config.guess`

make all -j $NUMBER_OF_PROCESSORS
make install
