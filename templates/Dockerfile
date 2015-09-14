FROM gitinsky/baseimage:0.1.1
MAINTAINER Git In Sky <support@gitinsky.com>

ADD statsdaemon.tgz /bin/

EXPOSE 8125

CMD [ "/bin/statsdaemon", "-graphite=-", "-opentsdb=172.17.42.1:4242"]
