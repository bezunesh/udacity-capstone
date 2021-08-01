#!/usr/bin/env bash

# Step 1:
# Build image and add tag
docker build --tag=helloapp .

# Step 2: 
# List docker images
docker image ls 

# Step 3: 
# Run django app
docker run -p 8000:8000 helloapp