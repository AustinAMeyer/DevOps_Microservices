#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=austinmeyer/devops_microservice_machine_learning

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
cat /Users/austinmeyer/Desktop/PW.txt | docker login -u austinmeyer --password-stdin
docker tag devops_microservice_machine_learning $dockerpath

# Step 3:
# Push image to a docker repository
docker image push $dockerpath