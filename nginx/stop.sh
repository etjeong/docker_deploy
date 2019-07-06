#!/bin/bash
echo "STOP Nginx"
PROXY_CONTAINER_ID=$(docker ps -q -f name=^proxy$);
docker container stop ${PROXY_CONTAINER_ID} && docker container rm ${PROXY_CONTAINER_ID};
