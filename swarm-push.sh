#!/bin/bash

set -e

echo $SERVICE

scp -q -o StrictHostKeyChecking=no json.key $SSH_USER@$HOST:~/json.key
scp -q -o StrictHostKeyChecking=no docker-stack.yml $SSH_USER@$HOST:~/docker-stack.yml
ssh -q -o StrictHostKeyChecking=no $SSH_USER@$HOST 'docker login -u _json_key --password-stdin https://eu.gcr.io < ~/json.key'
ssh -q -o StrictHostKeyChecking=no $SSH_USER@$HOST 'docker stack deploy -c ~/docker-stack.yml $SERVICE'
ssh -q -o StrictHostKeyChecking=no $SSH_USER@$HOST 'rm ~/json.key && rm ~/docker-stack.yml'
