### Generate new binary

```bash
cd files
go get github.com/gitinsky/statsdaemon
GOOS=linux go build -ldflags '-w' -o statsdaemon github.com/gitinsky/statsdaemon
GZIP=-9 tar -cvzf statsdaemon.tgz statsdaemon
rm -v statsdaemon
```

### Manual run with default settings

```bash
docker run --rm -p 8125:8125 -ti gitinsky/statsdaemon statsdaemon -graphite='-' -opentsdb=172.17.42.1:4242
```
