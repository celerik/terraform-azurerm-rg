
output "id" {
  value = try(azurerm_resource_group.this.id)
}

output "name" {
  value = try(azurerm_resource_group.this.name)
}

output "location" {
  value = try(azurerm_resource_group.this.location)
}
