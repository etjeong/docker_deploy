#!/bin/bash

docker run -v /docker_deploy/log/nginx:/var/log/nginx/ -p 80:80 --name proxy -d mynginx
