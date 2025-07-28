#!/bin/bash

# Get today's date in YYMMDD format
date=$(date +%y%m%d)

# Input stream URL
input_url="https://forbinaquarium.com/Live/00/ph${date}/ph${date}_1080p.m3u8"

# Output directory
output_dir="/tmp/hls"
mkdir -p "$output_dir"

# Run ffmpeg to fetch and segment the stream
ffmpeg -i "$input_url" \
  -c:v copy -c:a copy \
  -f hls -hls_time 4 -hls_list_size 5 -hls_flags delete_segments \
  "$output_dir/stream.m3u8" &
