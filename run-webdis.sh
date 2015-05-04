#!/bin/bash
redis-server &

exec /usr/local/bin/webdis /tmp/webdis.json