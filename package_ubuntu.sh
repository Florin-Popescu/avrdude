export DESTDIR="$(pwd)/avrdude_ubuntu_$1" && make install
dpkg-deb --build --root-owner-group avrdude_ubuntu_$1
