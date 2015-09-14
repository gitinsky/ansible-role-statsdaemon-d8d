### Variables

- ```statsdaemon_listen_address``` in not defined by default. If set, container will be available only on this interface.
- ```ext_statsdaemon_volume```, default is ```/var/lib/docker-extvols/statsdaemon```
- ```statsdaemon_port```, default is ```statsdaemon_port```
- ```docker_dns_servers```, empty list by default
- ```graphite_address```, ```-``` stands for disable
- ```opentsdb_address```, default is ```"{{ ansible_docker0.ipv4.address }}:4242"``` so it points to the same host

### Generate new binary

```bash
cd files
go get -u github.com/gitinsky/statsdaemon
GOOS=linux go build -ldflags '-w' -o statsdaemon github.com/gitinsky/statsdaemon
GZIP=-9 tar -cvzf statsdaemon.tgz statsdaemon
rm -v statsdaemon
```

### Manual run with default settings

```bash
docker run --rm -p 8125:8125/udp -ti gitinsky/statsdaemon statsdaemon -graphite='-' -opentsdb=172.17.42.1:4242
```
