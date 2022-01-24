pkgname="ns-docker"
pkgver="0.0.1"
pkgrel="1"
pkgdesc="config files for Northstar Docker Server"
arch=("x86_64")
license=("GPLv3")
depends=("ruby" "docker")

source=(
    'git+https://github.com/motorailgun/northstar-configs'
    )

sha256sums=(
    'SKIP'
    )


package() {
    cd northstar-configs
    
    cp -r "tif2" "$pkgdir/etc/ns-docker/"
    install -Dm755 ns-docker.sh "$pkgdir/etc/ns-docker/ns-docker.rb"
    install -Dm755 env.rb "$pkgdir/etc/ns-docker/env.rb"
    install -Dm755 ssh-tunnel.sh "$pkgdir/etc/ns-docker/ssh-tunnel.sh"
    install -Dm644 ns-config.json "$pkgdir/etc/ns-docker/ns-config.json"

    install -Dm644 ns-ssh-tunnel.service "$pkgdir/usr/lib/systemd/system/ns-ssh-tunnel.service"
    install -Dm644 northstar-docker.service "$pkgdir/usr/lib/systemd/system/northstar-docker.service"
}
