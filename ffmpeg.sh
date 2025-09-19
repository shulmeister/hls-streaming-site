#!/bin/bash
# Starts the relay stream using today's date for the source URL

DATECODE=$(date +%y%m%d)
STREAMURL="https://forbinaquarium.com/Live/00/ph${DATECODE}/ph${DATECODE}_1080p.m3u8"
OUTDIR="./stream"

mkdir -p "$OUTDIR"
pkill -f "ffmpeg.*ph${DATECODE}" || true

ffmpeg -re \
  -i "$STREAMURL" \
  -c copy \
  -f hls \
  -hls_time 6 \
  -hls_list_size 8 \
  -hls_flags delete_segments \
  "$OUTDIR/index.m3u8"
