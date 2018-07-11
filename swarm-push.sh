#!/bin/bash

set -e

scp -q -o StrictHostKeyChecking=no json.key $SSH_USER@$HOST:~/json.key
scp -q -o StrictHostKeyChecking=no docker-stack.yml $SSH_USER@$HOST:~/docker-stack.yml
ssh -q -o StrictHostKeyChecking=no $SSH_USER@$HOST 'docker login -u _json_key --password-stdin https://eu.gcr.io < ~/json.key && docker stack deploy --with-registry-auth -c ~/docker-stack.yml $SERVICE && rm ~/json.key && rm ~/docker-stack.yml'
