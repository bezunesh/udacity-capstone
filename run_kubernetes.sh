#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# dockerhub path
dockerpath=docker.io/bezu/helloapp

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment helloapp --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/helloapp 8000:8000
