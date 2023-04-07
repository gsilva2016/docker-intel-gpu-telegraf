#!/bin/bash

# TODO get data from python3

i=`ls /dev/dri/render* | wc -l`

JSON_COMPLETE="[{\"time\": `date +%s`"
for (( gpuIdx=0; gpuIdx<$i; gpuIdx++ ))
do 
	JSON=`xpu-smi stats -d $gpuIdx -j`
	JSON_GPU=`echo $JSON | python3 /opt/intel-gpu-telegraf/get_intel_dgpu_flex_status.py | sed "s/gpuIdx/$gpuIdx/g"`
	JSON_COMPLETE="$JSON_COMPLETE,$JSON_GPU"
	#echo "$JSON_GPU"
done
JSON_COMPLETE="$JSON_COMPLETE }]"
echo $JSON_COMPLETE

exit 0
