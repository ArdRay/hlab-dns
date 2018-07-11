#!/bin/bash

set -e

docker login -u _json_key --password-stdin https://gcr.io < json.key
docker tag hlab-dns eu.gcr.io/axial-radius-203218/hlab-dns:x86
docker push eu.gcr.io/axial-radius-203218/hlab-dns:x86
