#!/bin/sh

for file in $(find -name "*.mp4"); do
dir=`dirname $file`
ffmpeg -i $dir/video.mp4 -c:v libx264 $dir/encoded.mp4
done