provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source = "./modules/vpc"

  vpc_name       = var.vpc_name
  vpc_cidr       = var.vpc_cidr
  azs            = var.azs
  private_subnets = var.private_subnets
}

module "eks" {
  source = "./modules/eks"

  subnet_ids      = module.vpc.private_subnets
  cluster_name    = var.cluster_name
  node_group_name = var.node_group_name
  desired_size    = var.desired_size
  max_size        = var.max_size
  min_size        = var.min_size
}

module "ecr" {
  source = "./modules/ecr"

  repository_name = var.repository_name
}
