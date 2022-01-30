#!/bin/bash
docker build -t lunghan . 
docker run --rm -d --name=lunghan -p 127.0.0.1:80:80 -it lunghan
docker exec -d lunghan bash -c "cron"
