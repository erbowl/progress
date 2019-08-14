for pngFile in static/images/*
do
    echo "start converting "$pngFile
    base=`basename $pngFile .jpg`
    echo $base
    cwebp $pngFile -o $base".webp" >/dev/null 2>&1
    echo "complete"
done
