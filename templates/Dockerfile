FROM gitinsky/baseimage:0.1.1
MAINTAINER Git In Sky <support@gitinsky.com>

ADD statsdaemon.tgz /bin/

EXPOSE {{ statsdaemon_port }}

CMD [ "/bin/statsdaemon", "-graphite='-', ""-opentsdb='{{ ansible_docker0.ipv4.address }}:4242']
