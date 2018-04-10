#!/bin/bash

docker rm -f webarya

set -e 

docker build -t webarya .
docker run --name webarya -d -p 8080:80 webarya
exec docker logs -f webarya
