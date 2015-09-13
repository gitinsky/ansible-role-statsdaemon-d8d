FROM gitinsky/baseimage:0.1.1
MAINTAINER Git In Sky <support@gitinsky.com>

ADD statsdaemon.tgz /bin/

EXPOSE {{ statsdaemon_port }}

CMD [ "/bin/statsdaemon", "-graphite={{ graphite_address }}", "-opentsdb={{ opentsdb_address }}"]
