#!/bin/bash
docker buildx build --platform linux/amd64 -t danbai225/pvz:he . -f pvz.Dockerfile
docker push danbai225/pvz:he