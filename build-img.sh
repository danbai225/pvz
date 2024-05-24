#!/bin/bash
docker buildx build --platform linux/amd64 -t danbai225/pvz:"$1" . -f pvz-"$1".Dockerfile
docker push danbai225/pvz:"$1"