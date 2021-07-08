#!/bin/sh
for file in $(find -name "*.md"); do
    cat $file
    read var
    if [[ -n $var ]]
    then
        continue
    fi
done
