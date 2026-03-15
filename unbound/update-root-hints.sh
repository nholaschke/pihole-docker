#!/bin/sh
echo "Checking for updated root hints..."
curl -sf https://www.internic.net/domain/named.root -o /opt/unbound/etc/unbound/root.hints.tmp
if [ $? -eq 0 ]; then
    mv /opt/unbound/etc/unbound/root.hints.tmp /opt/unbound/etc/unbound/root.hints
    echo "Root hints updated successfully."
else
    echo "Failed to download root hints; using existing file."
fi
