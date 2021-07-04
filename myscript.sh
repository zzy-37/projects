#!/bin/bash
for val in $(find -name *.JPG); do
    # convert $val ${val%.*}.jpg
    mv $val ${val%.*}.jpg
done
