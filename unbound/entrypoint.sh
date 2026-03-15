#!/bin/sh
# update root hints
/opt/unbound/update-root-hints.sh
# start unbound
exec unbound -d -c /opt/unbound/etc/unbound/unbound.conf
