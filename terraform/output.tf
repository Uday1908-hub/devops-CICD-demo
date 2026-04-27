
output "resource_group_name" {
  value = module.resource_group.resource_group_name
}

output "acr_name" {
  value = module.acr.acr_name
}

output "acr_login_server" {
  value = module.acr.acr_login_server
}

output "aks_cluster_name" {
  value = module.aks.aks_cluster_name
}
