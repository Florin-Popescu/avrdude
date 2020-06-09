INSTALL_DIR=/c/avr

./bootstrap

CC=x86_64-w64-mingw32-gcc \
./configure \
--prefix=$INSTALL_DIR \
--datadir=$INSTALL_DIR \
--sysconfdir=$INSTALL_DIR/bin

make all -j $NUMBER_OF_PROCESSORS
make install
