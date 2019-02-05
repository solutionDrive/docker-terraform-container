#!/usr/bin/env bash

# Return immediately on error (with error exit status)
set -e

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push solutiondrive/terraform
