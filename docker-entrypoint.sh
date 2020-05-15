#!/bin/sh

# ALLOW SPECIFYING $SRC AS A FIRST PARAM PASSED
if [ -z $SRC ]; then
    SRC=$1
fi

ffmpeg -rtsp_transport tcp -i $SRC -vf fps=1 -strftime 1 "/frames/%Y-%m-%d_%H-%M-%S.png"
