FROM alpine:3.11
RUN apk add --no-cache ffmpeg tzdata
COPY docker-entrypoint.sh /docker-enrrypoint.sh
VOLUME /frames
ENTRYPOINT ["/docker-enrrypoint.sh"]
