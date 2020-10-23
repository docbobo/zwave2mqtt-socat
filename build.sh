#!/bin/sh

docker build --build-arg Z2M_VERSION=$1 -t docbobo/zwave2mqtt-socat:$1 .
