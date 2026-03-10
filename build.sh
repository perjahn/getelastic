#!/usr/bin/env bash
set -e

echo 'Retrieving docker images...'
docker pull elasticsearch:9.3.1
docker pull elastic/filebeat:9.3.1
docker images | sort

echo 'Saving docker images...'
docker save elasticsearch:9.3.1 | gzip -9 > elasticsearch_9_3_1.tar.gz
docker save elastic/filebeat:9.3.1 | gzip -9 > filebeat_9_3_1.tar.gz

ls -la
