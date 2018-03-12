#!/bin/bash

# source .env

# docker pull telegraf:${TELEGRAF_VERSION}
# docker pull influxdb:${INFLUXDB_VERSION}
# docker pull chronograf:${CHRONOGRAF_VERSION}
# docker pull kapacitor:${KAPACITOR_VERSION}

cat docker-compose.yml | grep image: | cut -d':' -f2-3 | while read line; do docker pull $line; done