pkgname=rebuild-check-hook
pkgver=1.0.0
pkgrel=1
pkgdesc="Pacman hook to consolidate anneal and rebuild-detector outputs and trigger rebuilds"
arch=('any')
license=('GPL')
depends=('anneal' 'rebuild-detector' 'bash')
install=rebuild-check-hook.install
source=(
    "rebuild-check"
    "rebuild-check.hook"
)
sha256sums=('2ba1483f6e784c1e735956e3bd6af49aeebbf79bd794977b61ee4cb5f7d04cd2'
            'd3e3cef223f8f056aa13d24c77b509111e036f1da57af1ac107583b4c5639da4')

package() {
    # Install update script
    install -Dm755 "${srcdir}/rebuild-check" "${pkgdir}/usr/bin/rebuild-check"

    # Install pacman hook
    install -Dm644 "${srcdir}/rebuild-check.hook" "${pkgdir}/usr/share/libalpm/hooks/rebuild-check.hook"
}
