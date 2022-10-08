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
source=(https://github.com/Florin-Popescu/avrdude/archive/refs/tags/v${pkgver}-20171130+svn1453-${pkgrel}.tar.gz)
noextract=()
md5sums=('SKIP')
validpgpkeys=()

prepare() {
	cd "${srcdir}/${pkgname}-${pkgver}-20171130-svn1453-${pkgrel}"
}

build() {
	cd "${srcdir}/${pkgname}-${pkgver}-20171130-svn1453-${pkgrel}"
	./bootstrap
	./configure
	make all
}

check() {
	cd "${srcdir}/${pkgname}-${pkgver}-20171130-svn1453-${pkgrel}"
	make -k check
}

package() {
	cd "${srcdir}/${pkgname}-${pkgver}-20171130-svn1453-${pkgrel}"
	make DESTDIR="$pkgdir/" install
}
