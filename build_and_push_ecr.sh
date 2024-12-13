#!/bin/bash

# Variáveis
AWS_REGION="us-west-2"
ECR_REGISTRY="123456789012.dkr.ecr.us-west-2.amazonaws.com" # Substitua pelo seu ECR Registry URI
ECR_REPOSITORY="helloworld"
IMAGE_TAG=$(git rev-parse --short HEAD)

# Login no ECR
echo "Logging into AWS ECR..."
aws ecr get-login-password --region $AWS_REGION | docker login --username AWS --password-stdin $ECR_REGISTRY

# Construir a Imagem Docker
echo "Building Docker image..."
docker build -t $ECR_REGISTRY/$ECR_REPOSITORY:$IMAGE_TAG ./app

# Push da Imagem para o ECR
echo "Pushing Docker image to ECR..."
docker push $ECR_REGISTRY/$ECR_REPOSITORY:$IMAGE_TAG

echo "Docker image pushed to ECR: $ECR_REGISTRY/$ECR_REPOSITORY:$IMAGE_TAG"
