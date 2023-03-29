#!/bin/bash
set -e

IMG="keycloak-debian:latest"

docker build -t $IMG .
docker run --rm -iv${PWD}:/root/OUTPUT $IMG sh -s << EOF
    cd /root
    mvn clean package || exit 1
    chown -v $(id -u):$(id -g) target/*.deb
    cp -va target/*.deb OUTPUT/
    echo "============ Done. Built for: ============="
    lsb_release -a
EOF
echo "=============== $(pwd) ==============="
ls -l *.deb
