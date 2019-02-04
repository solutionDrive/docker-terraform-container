#!/usr/bin/env bash

# Return immediately on error (with error exit status)
set -e

docker build --no-cache \
    --build-arg TERRAFORM_VERSION \
    --build-arg TERRAFORM_SHA256SUM \
    -t solutiondrive/terraform:${TERRAFORM_VERSION} \
    .

# Tag "latest"
if [ "$LATEST" = "1" ]; then
    docker tag \
        solutiondrive/terraform:${TERRAFORM_VERSION} \
        solutiondrive/terraform:latest
fi
