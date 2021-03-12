#!/bin/bash
set -e

/check-reload &

echo "Initializing cache..."
mkdir -p /var/spool/squid
chown -R proxy:proxy /var/spool/squid
[[ ! -d /var/spool/squid/00 ]] && /usr/sbin/squid -N -f /etc/squid/squid.conf -z

echo "Starting squid..."
exec /usr/sbin/squid -f /etc/squid/squid.conf -NYCd 1
