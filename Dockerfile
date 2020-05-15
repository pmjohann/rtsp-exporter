FROM alpine:3.11
RUN apk add --no-cache ffmpeg
COPY docker-entrypoint.sh /docker-enrrypoint.sh
VOLUME /frames
ENTRYPOINT ["/docker-enrrypoint.sh"]
