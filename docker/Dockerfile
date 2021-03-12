FROM ubuntu:focal
LABEL maintainer="david.garcia@canonical.com"

ENV SQUID_VERSION           4.10

ADD entrypoint.sh /entrypoint.sh
ADD check-reload /check-reload

RUN chmod 755 /entrypoint.sh
RUN chmod 755 /check-reload

RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y squid=${SQUID_VERSION}* python3 && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/bin/bash", "-c", "/entrypoint.sh"]
EXPOSE 3128/tcp
