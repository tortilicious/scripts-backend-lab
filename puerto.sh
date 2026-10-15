#!/usr/bin/env bash

if [ $# -eq 0 ]; then
    echo "Uso: $0 SERVICIO" >&2
    exit 1
fi

puerto=$1

sudo ss -tlnp "sport = :$puerto"
