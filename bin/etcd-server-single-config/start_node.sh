#!/usr/bin/env bash

CONFIG_FILE="etcd-server-single-node-config.yml"

if [ ! -x "../etcd" ]; then
    echo "etcd not exist!"
    exit 1
fi

../etcd --config-file "$CONFIG_FILE"