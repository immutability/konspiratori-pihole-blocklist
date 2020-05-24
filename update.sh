#!/bin/bash
# Update the pihole adlist with domains from konspiratori.sk

BASEDIR=$(dirname $0)
curl 'https://www.konspiratori.sk/assets/downloads/zoznam.txt' > "${BASEDIR}/konspiratori.source"
cat "${BASEDIR}/konspiratori.source" | awk -F ',' '{print $1}' | sort > "${BASEDIR}/konspiratori.list"
