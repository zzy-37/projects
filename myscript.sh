#!/bin/bash
#for val in $(find -name *.JPG); do
    # convert $val ${val%.*}.jpg
    #mv $val ${val%.*}.jpg
#done
format=gif

for file in $(find -name video.mp4); do
    tmp=${file#*-}
    num=${tmp%%/*}
    #echo ${num} imgs/$num/${file##*/} $file
    mv $file origins/$num.mp4
    #mkdir -p imgs/small/$num imgs/medium/$num imgs/large/$num
    #convert $file -resize 300 imgs/small/$num/${file##*/}
    #convert $file -resize 600 imgs/medium/$num/${file##*/}
    #convert $file -resize 900 imgs/large/$num/${file##*/}
    #convert $file -resize 100x100 portraits/${num}.jpg
    #convert $file -resize 300 thumbnails/${num}-small.gif
    #convert $file -resize 600 thumbnails/${num}-medium.gif
    #convert $file -resize 900 thumbnails/${num}-large.gif
done
