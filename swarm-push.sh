#!/bin/bash

set -e

scp -o StrictHostKeyChecking=no json.key $SSH_USER@$HOST:~/json.key
ssh -o StrictHostKeyChecking=no $SSH_USER@$HOST 'docker login -u _json_key --password-stdin https://eu.gcr.io < ~/json.key && docker stack deploy -c docker-stack.yml --with-registry-auth $SERVICE && rm ~/json.key' 
