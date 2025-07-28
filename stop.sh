#!/bin/bash

# Kill ffmpeg
pkill -f ffmpeg

# Kill the server
pkill -f "node server.js"
