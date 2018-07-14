#!/bin/bash

set -e

docker login -u _json_key --password-stdin https://eu.gcr.io < json.key
docker tag hlab-dns:amd64 eu.gcr.io/$PROJECT_ID/hlab-dns:amd64
docker push eu.gcr.io/$PROJECT_ID/hlab-dns:amd64

docker tag hlab-dns:arm6 eu.gcr.io/$PROJECT_ID/hlab-dns:arm6
docker push eu.gcr.io/$PROJECT_ID/hlab-dns:arm6
