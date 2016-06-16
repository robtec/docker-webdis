# Webdis Docker Container

Webdis HTTP client for Redis - Dockerized

[![Build Status](https://travis-ci.org/robtec/docker-webdis.svg?branch=master)](https://travis-ci.org/robtec/docker-webdis)

See http://webd.is/ for documentation on Webdis.

To build the image

`docker build -t robtec/webdis .`

To run the image

`docker run -d -p 7379:7379 --name webdis robtec/webdis`

Test it out!!

```
curl http://<docker-host>:7379/SET/hello/world
{"SET":[true,"OK"]}

curl http://<docker-host>:7379/GET/hello
{"GET":"world"}
```
