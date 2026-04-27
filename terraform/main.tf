module "resource_group" {
  source              = "./modules/resource_group"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "acr" {
  source              = "./modules/acr"
  acr_name            = var.acr_name
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.location
}

module "aks" {
  source              = "./modules/aks"
  aks_cluster_name    = var.aks_cluster_name
  dns_prefix          = var.dns_prefix
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.location
  node_count          = var.node_count
  environment         = var.environment
  acr_id              = module.acr.acr_id
}
