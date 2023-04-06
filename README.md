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
  
  ### Start Dashboard
  
  Open a browser to http://127.0.0.1:8086 and login to Grafana using username: telegraf password: p@ssw8rd
  
  After logging in goto Dashboards and import the intel_12th_gen._core_i7_and_arc_a770m_telemetry.json file.
  
  The below dashboard will be available after imported.
  
  <img src="https://github.com/gsilva2016/docker-intel-gpu-telegraf/blob/master/grafana-serpentcanyon-snapshot.png" />
  
