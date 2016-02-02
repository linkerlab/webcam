#!/bin/bash
FILE=image.jpg

if [[ -n $1 ]] ; then
  FILE=$1
fi

/usr/bin/fswebcam $FILE

if [[ $! -eq 0 ]] ; then
  echo "take photo to /data/$FILE"
fi
