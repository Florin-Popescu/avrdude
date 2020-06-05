./bootstrap
./configure --prefix=/home/avrdude --datadir=/home/avrdude --sysconfdir=/home/avrdude/bin
make all -j $NUMBER_OF_PROCESSORS
make install
