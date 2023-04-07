#!/bin/bash

./docker-run-influxdb.sh
sleep 1
docker exec influxdb2 influx auth create --all-access --org telegraf
sleep 1
./docker-run-telegraf.sh

