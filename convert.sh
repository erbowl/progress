#!/bin/bash

for pngFile in static/images/**/*.jpg
do
    echo "start converting "$pngFile
    base=`basename $pngFile .jpg`
    echo $base
    echo $pngFile
    cwebp $pngFile -o ${pngFile%.*}".webp" >/dev/null 2>&1
    echo "complete"
done
