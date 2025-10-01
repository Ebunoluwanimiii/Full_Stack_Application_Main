output "cluster_id" {
  value = aws_eks_cluster.ekscluster.id
}

output "node_group_id" {
  value = aws_eks_node_group.ekscluster.id
}

output "vpc_id" {
  value = aws_vpc.ekscluster_vpc.id
}

output "subnet_ids" {
  value = aws_subnet.ekscluster_subnet[*].id
}
