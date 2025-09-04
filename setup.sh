#!/bin/bash

mkdir -p $PWD/datalake/landing
mkdir -p $PWD/datalake/staged
mkdir -p $PWD/datalake/curated

docker run \
  --name rionowcast-minio \
  -p 9100:9000 \
  -p 9101:9001 \
  -d \
  --user $(id -u):$(id -g) \
  --env-file config/.env \
  -v $PWD/datalake:/data \
  minio/minio:RELEASE.2025-04-08T15-41-24Z server /data --console-address ":9001"
