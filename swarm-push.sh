#!/bin/bash

set -e

scp -q -o 'StrictHostKeyChecking=no' json.key $SSH_USER@$HOST:~/json.key
scp -q -o 'StrictHostKeyChecking=no' docker-stack.yml $SSH_USER@$HOST:~/docker-stack.yml
ssh -q -o 'StrictHostKeyChecking=no' $SSH_USER@$HOST 'docker stack deploy -c ~/docker-stack.yml $SERVICE && docker stack deploy --compose-file ~/docker-stack.yml dns'
ssh -q -o 'StrictHostKeyChecking=no' $SSH_USER@$HOST 'rm ~/json.key && rm ~/docker-stack.yml'
