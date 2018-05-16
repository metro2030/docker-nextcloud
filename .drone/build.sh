#!/bin/bash
set -e  
cd /var/cache/drone/

# [pass tests here]

wrapdocker &  
sleep 5

docker build -t nextcloud/nextcloud-test-drone Dockerfile.13.0 .  
