pkgname=rebuild-check-hook
pkgver=1.0.0
pkgrel=5
pkgdesc="Pacman hook to consolidate anneal and rebuild-detector outputs and trigger rebuilds"
arch=('any')
url="https://github.com/Vikyek/rebuild-check-hook"
license=('GPL')
depends=('anneal' 'rebuild-detector' 'bash')
install=rebuild-check-hook.install
source=(
    "rebuild-check"
    "rebuild-check.hook"
)
sha256sums=('f56c8656305ab92d8f0aba363106ebccd61e0214557dc120510bb395b2a6b28f'
            'd3e3cef223f8f056aa13d24c77b509111e036f1da57af1ac107583b4c5639da4')

package() {
    # Install update script
    install -Dm755 "${srcdir}/rebuild-check" "${pkgdir}/usr/bin/rebuild-check"

    # Install pacman hook
    install -Dm644 "${srcdir}/rebuild-check.hook" "${pkgdir}/usr/share/libalpm/hooks/rebuild-check.hook"
}
