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
docker login && docker image tag devops_microservice_machine_learning devops_microservice_machine_learning

# Step 3:
# Push image to a docker repository
docker image push $dockerpath