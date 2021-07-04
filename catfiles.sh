#!/bin/sh
for file in $(find -name "*.md"); do                                                                                                              0:21:33
    cat $file
    read var
    if [[ -n $var ]]
    then
        continue
    fi
done
