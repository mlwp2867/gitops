output "cluster_endpoint" {
  description = "Endpoint for EKS control plane."
  value       = module.eks.cluster_endpoint
}
output "cluster_name" {
  description = "eks cluster name"
  value       = module.eks.cluster_id
}

output "cluster_security_group_id" {
  description = "Security group ids attached to the cluster control plane."
  value       = module.eks.cluster_security_group_id
}

output "kubectl_config" {
  description = "kubectl config as generated by the module."
  value       = module.eks.kubeconfig
}

output "config_map_aws_auth" {
  description = "A kubernetes configuration to authenticate to this EKS cluster."
  value       = module.eks.config_map_aws_auth
}
output "eks_node_role_arn" {
  description = "the arn of the eks nodes role"
  value       = module.eks.worker_iam_role_arn
}

output "kubefirst_vpc_default_sg" {
  value = module.vpc.default_security_group_id
}

output "kubefirst_vpc_public_subnets" {
  value = module.vpc.public_subnets
}

output "kubefirst_vpc_id" {
  value = module.vpc.vpc_id
}