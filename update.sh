#!/bin/bash

# Update the pihole adlist with domains from konspiratori.sk.
# Remove extra columns from the source CSV, sort domains by name, add "www" version of each domain.

BASEDIR=$(dirname $0)
curl 'https://konspiratori.sk/static/lists/zoznam.csv' > "${BASEDIR}/konspiratori.source"
cat "${BASEDIR}/konspiratori.source" | awk -F ',' '{print $1}' | sort | sed 's/.*/&\nwww.&/' > "${BASEDIR}/konspiratori.list"
