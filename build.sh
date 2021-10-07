#!/bin/bash

case $(uname -o | cut -d '/' -f2) in
	"Msys")
		#These libraries are not available pre-built under msys2
		git clone git@github.com:libusb/libusb.git
		cd ./libusb
		./bootstrap.sh
		./configure
		make -j$NUMBER_OF_PROCESSORS
		make install
		cd ..

		git clone git@github.com:libconfuse/libconfuse.git
		cd ./libconfuse
		./autogen.sh
		./configure
		make -j$NUMBER_OF_PROCESSORS
		make install
		cd ..

		git clone git://developer.intra2net.com/libftdi
		cd ./libftdi
		mkdir build
		cd build
		cmake -DCMAKE_INSTALL_PREFIX="/usr" ../
		make -j$NUMBER_OF_PROCESSORS
		make install
		cd ..

		git clone git@github.com:libusb/hidapi.git
		cd ./hidapi
		./bootstrap
		./configure
		make all -j$NUMBER_OF_PROCESSORS
		make install
		cd ..

		SUDO=
		;;
	"Linux")
		NUMBER_OF_PROCESSORS=$(nproc)
		SUDO=sudo
		;;
esac

./bootstrap
./configure

make all -j$NUMBER_OF_PROCESSORS
$SUDO make install
