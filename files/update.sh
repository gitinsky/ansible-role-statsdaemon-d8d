#!/bin/bash
go get -u github.com/gitinsky/statsdaemon
GOOS=linux go build -ldflags '-w' -o statsdaemon github.com/gitinsky/statsdaemon
GZIP=-9 tar -cvzf statsdaemon.tgz statsdaemon
rm -v statsdaemon

