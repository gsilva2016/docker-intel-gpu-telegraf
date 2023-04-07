import sys, json; 


if __name__ == '__main__':
    json_obj = json.load(sys.stdin)
    compute_avg = str(json_obj["engine_util"]["compute"][0]["value"])
    decoder_avg1 = str(json_obj["engine_util"]["decoder"][0]["value"])
    decoder_avg2 = str(json_obj["engine_util"]["decoder"][1]["value"])
    gpuIdx = "0"

# echo "[{\"time\": `date +%s`, \"iGPU Decode1/Encode1 Util\": "$VIDEO_UTIL",  \"iGPU Decode2/Encode2 Util\": "$VIDEO_UTIL_2", \"iGPU Compute Util\": "$RENDER_UTIL",\"Arc Decode1/Encode1 Util\": "$VIDEO_UTIL2", \"Arc Decode2/Encode2 Util\": "$VIDEO_UTIL2_2", \"Arc Compute Util\": "$RENDER_UTIL2" }]"
    print("\"Flex GPU.gpuIdx Compute Util\": " + compute_avg + ", \"Flex GPU.gpuIdx Decode1/Encode1 Util\": " + decoder_avg1 + ", \"Flex GPU.gpuIdx Decode2/Encode2 Util\": " + decoder_avg2 + "")
