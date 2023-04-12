#!/bin/bash

./docker-run-influxdb.sh
sleep 5
#docker exec influxdb2 influx auth create --all-access --org telegraf
sleep 5
./docker-run-telegraf.sh

