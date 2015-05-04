#!/bin/bash

cd /webdis && make clean all

redis-server &

exec ./webdis