FROM alpine:3.11
RUN apk add --no-cache ffmpeg
VOLUME /frames
ENTRYPOINT ffmpeg -rtsp_transport tcp -i $SRC -vf fps=1 /frames/%d.png
