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

### Specifying frame export format

You can change the extension (format) of the exported frames by setting the **EXT** environment variable.
The default is "png".

### Debug mode

By default the ffmpeg flag *-loglevel panic* is set. In order to gain debug info, pass the -e DEBUG=1 environment variable.
