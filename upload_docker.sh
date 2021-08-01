#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Step 1:
# Create dockerpath
dockerpath=bezu/helloapp

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker image tag helloapp:latest $dockerpath:latest

# Step 3:
# Push image to a docker repository
docker image push $dockerpath:latest