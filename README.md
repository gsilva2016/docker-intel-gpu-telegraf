# Intel Telemetry in Grafana via Telegraf

This container is designed to collect and send Intel telemetry data to InfluxDB via Telegraf by polling utilization data from Intel integrated and discrete GPUs, Core and Xeon SP CPUs, system memory.   

Credit: This repository was original forked from  https://github.com/brianmiller/docker-intel-gpu-telegraf.


### Getting Started

 #### Build Container 
 
  `docker build --build-arg HTTPS_PROXY=$my_https_proxy --build-arg HTTP_PROXY=$my_http_proxy -t intel-telegraf:1.0 -f Dockerfile.telegraf .`
  
  or
  
  `./docker-build.sh`
 
 #### Run Container
 
  `./docker-run.sh`
  
