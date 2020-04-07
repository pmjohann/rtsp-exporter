# rtsp-exporter
Export frames from RTSP streams

## How to run

```
docker run --rm -e SRC='rtsp://user:pass@address:port' -v /host/path/to/frames:/frames pmjohann/rtsp-exporter
```
