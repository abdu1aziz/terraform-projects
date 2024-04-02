resource "azurerm_virtual_desktop_host_pool" "nj_host_pool" {
  name                     = "nj-host-pool"
  location                 = azurerm_resource_group.rg.location
  resource_group_name      = azurerm_resource_group.rg.name
  maximum_sessions_allowed = 10
  type                     = "Pooled"
  load_balancer_type       = "BreadthFirst"
  friendly_name            = "AVD Host Pool using AADDS"
}

resource "time_rotating" "avd_registration_expiration" {
  # Must be between 1 hour and 30 days
  rotation_days            = 29
}

resource "azurerm_virtual_desktop_host_pool_registration_info" "avd" {
  hostpool_id     = azurerm_virtual_desktop_host_pool.nj_host_pool.id
  expiration_date = time_rotating.avd_registration_expiration.rotation_rfc3339
}


