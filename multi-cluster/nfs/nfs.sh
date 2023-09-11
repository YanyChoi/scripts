#!/usr/bin/env bash

apt-get update 2>/dev/null
apt-get install -y nfs-kernel-server 2>/dev/null

mkdir -p /mnt/nfs/prod
mkdir -p /mnt/nfs/ops
chown -R nobody:nogroup /mnt

echo "/mnt/nfs/prod	192.168.10.0/24(rw,sync,no_subtree_check)" >> /etc/exports
echo "/mnt/nfs/ops	192.168.10.0/24(rw,sync,no_subtree_check)" >> /etc/exports

exportfs -ar

systemctl restart nfs-kernel-server
