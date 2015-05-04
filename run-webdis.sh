#!/bin/bash
redis-server --appendonly yes &

exec /usr/local/bin/webdis /tmp/webdis.json