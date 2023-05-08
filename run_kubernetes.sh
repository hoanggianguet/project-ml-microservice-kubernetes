#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="hoanggianguet/udacity-microservices:v1.0.0"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity-microservices \
    --image=$dockerpath \
    --port=80
# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward udacity-microservices 8000:80


# Step 5:
# See the output of app running into pods
kubectl logs udacity-microservices  