#!/bin/bash

# get igpu and arc gpu...
# iGPU
JSON=$(/usr/bin/timeout -k 2 2 /usr/local/bin/intel_gpu_top -J -d pci:card=1)
VIDEO_UTIL=$(echo "$JSON"|grep Video/0 -A 1|tail -1|grep busy|cut -d ":" -f2|cut -d "," -f1|cut -d " " -f2)
VIDEO_UTIL_2=$(echo "$JSON"|grep Video/1 -A 1|tail -1|grep busy|cut -d ":" -f2|cut -d "," -f1|cut -d " " -f2)
RENDER_UTIL=$(echo "$JSON"|grep Render/3D/0 -A 1|tail -1|grep busy|cut -d ":" -f2|cut -d "," -f1|cut -d " " -f2)

#dgpu
JSON2=$(/usr/bin/timeout -k 2 2 /usr/local/bin/intel_gpu_top -J -d pci:card=0)
VIDEO_UTIL2=$(echo "$JSON2"|grep Video/0 -A 1|tail -1|grep busy|cut -d ":" -f2|cut -d "," -f1|cut -d " " -f2)
VIDEO_UTIL2_2=$(echo "$JSON2"|grep Video/1 -A 1|tail -1|grep busy|cut -d ":" -f2|cut -d "," -f1|cut -d " " -f2)
RENDER_UTIL2=$(echo "$JSON2"|grep unknown\]/0 -A 1|tail -1|grep busy|cut -d ":" -f2|cut -d "," -f1|cut -d " " -f2)



#Spit out something telegraf can work with
echo "[{\"time\": `date +%s`, \"iGPU Decode1/Encode1 Util\": "$VIDEO_UTIL",  \"iGPU Decode2/Encode2 Util\": "$VIDEO_UTIL_2", \"iGPU Compute Util\": "$RENDER_UTIL",\"Arc Decode1/Encode1 Util\": "$VIDEO_UTIL2", \"Arc Decode2/Encode2 Util\": "$VIDEO_UTIL2_2", \"Arc Compute Util\": "$RENDER_UTIL2" }]"

#Exit cleanly
exit 0
