output "cluster_id" {
  description = "ID of the EKS cluster"
  value       = aws_eks_cluster.example.id
}
