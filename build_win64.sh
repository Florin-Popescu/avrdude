INSTALL_DIR=/home/avrdude

./bootstrap

./configure \
--prefix=$INSTALL_DIR \
--datadir=$INSTALL_DIR \
--sysconfdir=$INSTALL_DIR/bin \
--host=x86_64-w64-mingw32

make all -j $NUMBER_OF_PROCESSORS
make install
