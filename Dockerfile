ARG Z2M_VERSION=latest
FROM robertslando/zwave2mqtt:$Z2M_VERSION
MAINTAINER Boris Pruessmann <boris@pruessman.org>

# Install socat
RUN apk update && apk add socat bash supervisor && mkdir -p /var/log/supervisor
ADD ./scripts/supervisord-socat.conf /etc/supervisor/conf.d/supervisord-socat.conf

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord-socat.conf"]
