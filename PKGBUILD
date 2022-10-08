pkgname=avrdude
pkgver=6.3
pkgrel=3
epoch=
pkgdesc="Programmer for AVR microcontrollers"
arch=('x86_64')
url=""
license=('GPL')
groups=()
depends=()
makedepends=()
checkdepends=()
optdepends=()
provides=()
conflicts=()
replaces=()
backup=()
options=()
install=
changelog=
source=(https://github.com/Florin-Popescu/avrdude/archive/refs/tags/v${pkgver}-${pkgrel}.tar.gz)
noextract=()
md5sums=('SKIP')
validpgpkeys=()

prepare() {
	cd "${srcdir}/${pkgname}-${pkgver}-${pkgrel}"
}

build() {
	cd "${srcdir}/${pkgname}-${pkgver}-${pkgrel}"
	./bootstrap
	./configure
	make all
}

check() {
	cd "${srcdir}/${pkgname}-${pkgver}-${pkgrel}"
	make -k check
}

package() {
	cd "${srcdir}/${pkgname}-${pkgver}-${pkgrel}"
	make DESTDIR="$pkgdir/" install
}
