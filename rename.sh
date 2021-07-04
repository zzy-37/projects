#!/bin/sh

dirs=`du | awk '{print $2}'|awk -F/ '$NF ~ /^[0-9]{6,7}$/ {print $0}'`

for dir in $dirs; do
    mv $dir ${dir%/*}/img
    #echo ${dir%/*}/img
done
