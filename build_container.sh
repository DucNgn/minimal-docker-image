#!/bin/bash
set -e

DOCKER_USER=$1

IMAGE="$DOCKER_USER/minimal-docker-image"
TAG1="$IMAGE:latest"

docker build --no-cache . --tag "$TAG1"

TAG2="$IMAGE:1.0.0"

docker tag "$TAG1" "$TAG2"

# List built images.
docker images "$IMAGE"