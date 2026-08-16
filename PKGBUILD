pkgname=rebuild-check-hook
pkgver=1.0.0
pkgrel=1
pkgdesc="Pacman hook to consolidate anneal and rebuild-detector outputs and trigger rebuilds"
arch=('any')
url="https://github.com/Vikyek/rebuild-check-hook"
license=('GPL')
depends=('anneal' 'rebuild-detector' 'bash')
install=rebuild-check-hook.install
source=(
    "rebuild-check"
    "rebuild-check.hook"
    "paru-wrapper"
)
sha256sums=('67a9361bbeebc33cab0643c78ea8b1f34ebc6befecb3364bbf9dd9ad766d65f5'
            'd3e3cef223f8f056aa13d24c77b509111e036f1da57af1ac107583b4c5639da4'
            'af16ba0cf11a108c9e95c7656824f580f1e3fe5aae38b5fc8312ca3509fdd6ca')

package() {
    # Install update script
    install -Dm755 "${srcdir}/rebuild-check" "${pkgdir}/usr/bin/rebuild-check"

    # Install pacman hook
    install -Dm644 "${srcdir}/rebuild-check.hook" "${pkgdir}/usr/share/libalpm/hooks/rebuild-check.hook"

    # Install paru wrapper
    install -Dm755 "${srcdir}/paru-wrapper" "${pkgdir}/usr/bin/paru-wrapper"
}
