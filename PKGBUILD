pkgname=rebuild-check-hook
pkgver=1.0.0
pkgrel=6
pkgdesc="Pacman hook to consolidate anneal and rebuild-detector outputs and trigger rebuilds"
arch=('any')
url="https://github.com/Vikyek/rebuild-check-hook"
license=('GPL-3.0-only')
depends=('anneal' 'rebuild-detector' 'bash')
install=rebuild-check-hook.install
source=(
    "rebuild-check"
    "rebuild-check.hook"
    "rebuild-check.1"
)
sha256sums=('f56c8656305ab92d8f0aba363106ebccd61e0214557dc120510bb395b2a6b28f'
            'd3e3cef223f8f056aa13d24c77b509111e036f1da57af1ac107583b4c5639da4'
            '102040f99aee18094a60c8784342db594b0e10010c5c2d5fa37f52c9e0674b13')

package() {
    # Install update script
    install -Dm755 "${srcdir}/rebuild-check" "${pkgdir}/usr/bin/rebuild-check"
    install -Dm644 "${srcdir}/rebuild-check.1" "${pkgdir}/usr/share/man/man1/rebuild-check.1"

    # Install pacman hook
    install -Dm644 "${srcdir}/rebuild-check.hook" "${pkgdir}/usr/share/libalpm/hooks/rebuild-check.hook"
}
