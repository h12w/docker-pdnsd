FROM debian:latest
MAINTAINER Hǎiliàng Wáng <w@h12.me>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y pdnsd
COPY pdnsd.conf /etc/pdnsd.conf

ENTRYPOINT ["/usr/sbin/pdnsd"]
