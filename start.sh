#!/usr/bin/env sh
# Develop by: KitsuneSemCalda
# Github by: https://github.com/KitsuneSemCalda/Auto-FreeBSD
# License: MIT License

update_latest_repo(){
    mkdir -p /usr/local/etc/repos &&
    echo 'FreeBSD: { url: "pkg+http://pkg.FreeBSD.org/${ABI}/latest", mirror_type: "srv", signature_type: "fingerprints", fingerprints: "/usr/share/keys/pkg", enabled: yes }' > /usr/local/etc/pkg/repos/FreeBSD.conf;
    echo 'Katana: { url: "pkg+https://raw.githubusercontent.com/fluxer/katana-freebsd/master", mirror_type: "srv", enabled: yes }' >> /usr/local/etc/pkg/repos/Katana.conf;
    pkg update -f && pkg upgrade -y           
}

update_latest_repo()