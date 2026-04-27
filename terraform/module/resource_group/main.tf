resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.location
}

output "resource_group_name" {
  value = azurerm_resource_group.this.name
}

output "location" {
  value = azurerm_resource_group.this.location
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

