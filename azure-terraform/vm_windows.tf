# Create network interface
resource "azurerm_network_interface" "nic_win_01" {
  name                = "nic_win-01"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "nic_win-01-configuration"
    subnet_id                     = azurerm_subnet.vm_subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "vm_win_01" {
  name                = "vm-win-01"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  size                = var.os_disk_type
  admin_username      = var.machine_username 
  admin_password      = var.machine_password
  network_interface_ids = [
    azurerm_network_interface.nic_win_01.id
  ]

  os_disk {
    name                 = "disk-os-win-01"
    caching              = var.os_disk_caching
    storage_account_type = var.os_storage_account_type
  }

  source_image_reference {
    publisher = var.vm_publisher
    offer     = var.vm_offer
    sku       = var.vm_sku
    version   = var.vm_version
  }
}

# VM # 2
# Create network interface
resource "azurerm_network_interface" "nic_win_02" {
  name                = "nic_win-02"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "nic_win-02-configuration"
    subnet_id                     = azurerm_subnet.vm_subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "vm_win_02" {
  name                = "vm-win-02"
  resource_group_name = azurerm_virtual_desktop_host_pool.nj_host_pool.resource_group_name
  location            = azurerm_virtual_desktop_host_pool.nj_host_pool.location
  size                = var.os_disk_type
  admin_username      = var.machine_username 
  admin_password      = var.machine_password
  network_interface_ids = [
    azurerm_network_interface.nic_win_02.id
  ]

  os_disk {
    name                 = "disk-os-win-02"
    caching              = var.os_disk_caching
    storage_account_type = var.os_storage_account_type
  }

  source_image_reference {
    publisher = var.vm_publisher
    offer     = var.vm_offer
    sku       = var.vm_sku
    version   = var.vm_version
  }
}