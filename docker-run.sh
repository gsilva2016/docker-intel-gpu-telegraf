#!/bin/bash

./docker-run-influxdb.sh
sleep 1
./docker-run-telegraf.sh

