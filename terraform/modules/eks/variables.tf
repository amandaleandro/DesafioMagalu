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

variable "subnet_ids" {
  description = "A list of subnet IDs for the EKS cluster"
  type        = list(string)
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
