#!/usr/bin/env bash

echo "Install NFS Client"
apt update >/dev/null 2>/dev/null
apt install -y -qq nfs-common >/dev/null 2>/dev/null

mkdir -p /mnt/nfs/ops
mount -t nfs -o vers=4 192.168.10.30:/mnt/nfs/ops /mnt/nfs/ops

