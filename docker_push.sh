#!/bin/bash -

docker tag udagram-api-feed $DOCKER_USERNAME/udagram-api-feed:v1
docker tag reverseproxy $DOCKER_USERNAME/reverseproxy:v1
docker tag udagram-api-feed $DOCKER_USERNAME/udagram-api-feed:v1
docker tag udagram-api-user $DOCKER_USERNAME/udagram-api-user:v1
docker tag udagram-frontend $DOCKER_USERNAME/udagram-frontend:v1
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push $DOCKER_USERNAME/reverseproxy:v1
docker push $DOCKER_USERNAME/udagram-api-feed:v1
docker push $DOCKER_USERNAME/udagram-api-user:v1
docker push $DOCKER_USERNAME/udagram-frontend:v1
