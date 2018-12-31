#!/bin/sh
set -e

test -d /data/config || mkdir -p /data/config
test -f /config/server.properties || touch /config/server.properties

if [ "$1" = 'debug' ]; then
    exec java -verbose:class -jar /blynk/server.jar -dataFolder /data -serverConfig /config/server.properties
fi

exec java -jar /blynk/server.jar -dataFolder /data -serverConfig /data/config/server.properties


