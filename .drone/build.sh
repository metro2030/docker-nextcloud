#!/bin/bash
set -e  
cd /var/cache/drone/src/path/to/app

# [pass tests here]

wrapdocker &  
sleep 5

docker build -t docker-registry/nextcloud-test-drone .  
docker push docker-registry/nextcloud-test-drone 
