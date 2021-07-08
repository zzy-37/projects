#!/bin/bash
dirs=`du -d 2|awk '{print $2}'|awk -F/ 'NF>2{print $0}'`

while IFS= read -r line; do
    que=${line% *}
    num=${line#* }
    for dir in $dirs; do
        if grep -q "$num" <<< "$dir"; then
        mv $dir ${dir%/*}/$que-$num
        fi
    done
done < list
