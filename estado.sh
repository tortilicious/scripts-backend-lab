#!/usr/bin/env bash

servicio=$1

if [ $# -eq 0 ]; then
    echo "Uso: $0 SERVICIO" >&2
    exit 1
fi

systemctl status --no-pager $servicio
df -h /
sudo ss -tlnp
