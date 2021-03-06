#!/bin/sh

# ALLOW SPECIFYING $SRC AS A FIRST PARAM PASSED
if [ -z $SRC ]; then
    SRC=$1
fi

# SUPPRESS OUTPUT IF NO DEBUG ENV VAR SET
if [ -z $DEBUG ]; then
    LOGLEVEL="-loglevel panic"
fi

ffmpeg $LOGLEVEL -rtsp_transport tcp -i $SRC -vf fps=1 -strftime 1 "/frames/%s.$EXT"
