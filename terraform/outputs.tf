output "kubeconfig" {
  value = aws_eks_cluster.eks_cluster.kubeconfig[0].value
}

output "cluster_endpoint" {
  value = aws_eks_cluster.eks_cluster.endpoint
}

output "cluster_name" {
  value = aws_eks_cluster.eks_cluster.name
}