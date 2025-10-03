output "cluster_id" {
  value = aws_eks_cluster.BloggingApp.id
}

output "node_group_id" {
  value = aws_eks_node_group.BloggingApp.id
}

output "vpc_id" {
  value = aws_vpc.BloggingApp_vpc.id
}

output "subnet_ids" {
  value = aws_subnet.BloggingApp_subnet[*].id
}
