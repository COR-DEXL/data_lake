#!/bin/bash

mkdir -p $PWD/datalake/landing
mkdir -p $PWD/datalake/staged
mkdir -p $PWD/datalake/curated

docker run \
  --name minio-cor \
  -p 9000:9000 \
  -p 9001:9001 \
  -d \
  --user $(id -u):$(id -g) \
  --env-file config/.env \
  -v $PWD/datalake:/data \
  minio/minio server /data --console-address ":9001"
