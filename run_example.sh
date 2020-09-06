#!/bin/sh
docker run -it -d --rm --net=host --name openconnect --privileged \
  -v /mnt/data/openconnect/connect-example.sh:/usr/local/bin/connect-example.sh \
  -v /dev/net/tun:/dev/net/tun \
  docker.io/shuguet/openconnect-udm \
  /usr/local/bin/connect-example.sh