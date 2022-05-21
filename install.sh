#!/usr/bin/env bash

useradd -m webtrafficgen
mkdir /var/lib/web-traffic-gen
cp ./urls.json /var/lib/web-traffic-gen
cp ./traffgen.js /usr/bin/traffgen
cp ./web-traffic-gen.service /etc/systemd/system
systemctl daemon-reload