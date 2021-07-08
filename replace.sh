#!/bin/bash
i=0
for file in `find $1 -name *md`; do
    dir=`dirname $file`
    number=${dir#*-}
    tmp=${file##*-}
    lang=${tmp%.*}
    if [ $lang == cn ];then
        category=普惠关怀
    else
        category="Inclusive Wellness"
    fi
    #echo $number $lang $category

    sed -i "/number:/d; /lang:/d; /category:/d; /layout:/a\ \nnumber: $number\nlang: $lang\ncategory: $category" $file
     
    echo $file $number

    #echo $file
    #grep number $file

    #let "i++"
    #if [ $i -eq 5 ]; then
        #exit
    #fi
done

#lang=cn
#number="1850181"
