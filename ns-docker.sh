#!/bin/bash
ENVS=`/etc/ns-docker/env.rb`

if test $(nproc --all) -lt 3 ; then
    echo "system doesn't meet minimum requirement of CPU cores > 3." | systemd-cat -p 2
    exit 1
fi

docker run --rm --interactive --pull always --publish 8081:8081/tcp --publish 37015:37015/udp --mount "type=bind,source=/etc/ns-docker/tif2,target=/mnt/titanfall" $ENVS ghcr.io/pg9182/northstar-dedicated:1-tf2.0.11.0