variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
  default     = "eks-vpc"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "azs" {
  description = "A list of availability zones in the region"
  type        = list(string)
  default     = ["us-west-2a", "us-west-2b", "us-west-2c"]
}

variable "private_subnets" {
  description = "List of private subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
  default     = "example-cluster"
}

variable "node_group_name" {
  description = "The name of the EKS node group"
  type        = string
  default     = "example-node-group"
}

variable "desired_size" {
  description = "The desired number of worker nodes"
  type        = number
  default     = 3
}

variable "max_size" {
  description = "The maximum number of worker nodes"
  type        = number
  default     = 5
}

variable "min_size" {
  description = "The minimum number of worker nodes"
  type        = number
  default     = 1
}

variable "repository_name" {
  description = "The name of the ECR repository"
  type        = string
}
