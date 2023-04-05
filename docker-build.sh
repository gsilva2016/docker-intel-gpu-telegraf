#!/bin/bash

docker build --build-arg HTTPS_PROXY=$my_https_proxy --build-arg HTTP_PROXY=$my_http_proxy -t intel-telegraf:1.0 -f Dockerfile.telegraf .
