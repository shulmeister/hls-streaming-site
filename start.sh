#!/bin/bash
# Starts Node.js static server and FFmpeg relay

pm2 start server.js --name hls-server
bash ffmpeg.sh
