# rtsp-exporter
Export frames from RTSP streams

## How to run

### Launch with $SRC as environment variable:

```
docker run --rm -e SRC='rtsp://user:pass@address:port' -v /host/path/to/frames:/frames pmjohann/rtsp-exporter
```

### Launch with $SRC as CMD

```
docker run --rm -v /host/path/to/frames:/frames pmjohann/rtsp-exporter rtsp://user:pass@address:port
```

### Timezones

By default, the frame images output by ffmpeg will be named as the datetime they are saved. To change the timezone, set the TZ environment variable like this:

```
docker run --rm  -v /host/path/to/frames:/frames pmjohann/rtsp-exporter -e TZ=Europe/Zurich rtsp://user:pass@address:port
```
