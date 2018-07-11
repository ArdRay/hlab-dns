#!/bin/bash

set -e

docker login -u _json_key --password-stdin https://eu.gcr.io < json.key
docker tag hlab-dns eu.gcr.io/$PROJECT_ID/hlab-dns:x86
docker push eu.gcr.io/$PROJECT_ID/hlab-dns:x86
