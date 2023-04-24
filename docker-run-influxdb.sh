#!/bin/bash

echo "Starting influxdb service"

docker run --net host -e DOCKER_INFLUXDB_INIT_PASSWORD=p@ssw8rd \
	-e DOCKER_INFLUXDB_INIT_USERNAME=telegraf \
	-e DOCKER_INFLUXDB_INIT_ORG=telegraf \
	-e DOCKER_INFLUXDB_INIT_MODE=setup \
	-e DOCKER_INFLUXDB_INIT_BUCKET=telegraf-bucket \
	-e INFLUXD_SESSION_RENEW_DISABLED=true  \
	-e INFLUXD_SESSION_LENGTH=700 \
	-v `pwd`/influxdb2-cache:/var/lib/influxdb2 \
	--name influxdb2 \
	-itd --rm influxdb:2.6.1
