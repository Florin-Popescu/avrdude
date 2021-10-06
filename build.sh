#!/bin/bash

case $(uname -o | cut -d '/' -f2) in
	"Msys")
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
