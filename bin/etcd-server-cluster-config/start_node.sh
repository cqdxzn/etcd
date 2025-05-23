#!/usr/bin/env bash

CONFIG_FILE="$1"

if [ "$1" = "" ]; then
  CONFIG_FILE=etcd-server-node2379.yml
  echo "use default config file:$CONFIG_FILE"
fi

if [ ! -f "$CONFIG_FILE" ]; then
    echo "$CONFIG_FILE is not exist!"
    exit 1
fi

if [ ! -x "../etcd" ]; then
    echo "etcd not exist!"
    exit 1
fi

../etcd --config-file "$CONFIG_FILE"