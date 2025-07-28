#!/bin/bash

echo "Starting HLS streaming server..."

# Make sure we have the required directory
mkdir -p ./tmp/hls

# Start ffmpeg in background
echo "Starting FFmpeg..."
bash ffmpeg.sh

# Wait a moment for ffmpeg to start
sleep 2

# Start the server
echo "Starting web server on http://localhost:3001"
npm start
