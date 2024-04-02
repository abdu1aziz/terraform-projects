output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "bastion_public_ip" {
  value = azurerm_public_ip.bastion_pip.ip_address
}