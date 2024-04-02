resource "azurerm_resource_group" "rg" {
  location = var.data_center_location
  name     = var.rg
  tags = {
    owner       = "me"
    environment = "test"
  }
}