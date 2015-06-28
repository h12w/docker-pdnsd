FROM debian:latest
MAINTAINER Hǎiliàng Wáng <w@h12.me>

# workaround: https://github.com/docker/docker/issues/1297
RUN echo "resolvconf resolvconf/linkify-resolvconf boolean false" | debconf-set-selections

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y pdnsd
COPY pdnsd.conf /etc/pdnsd.conf

ENTRYPOINT ["/usr/sbin/pdnsd"]
