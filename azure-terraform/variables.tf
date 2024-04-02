variable "rg" {
  type        = string
  description = "Name of the your resource group to be created."
  # Default value of Resource Group
  default = "nj-resource-group"
}

variable "data_center_location" {
  type        = string
  description = "Enter Region/Location where you'd like to host everything?"
  # Default value of Region Location.
  default = "eastus"
}

variable "machine_username" {
  type = string
  description = "Virtual Machine Username."
  default = "OmgAdmin"
  sensitive = true
}

variable "machine_password" {
  type = string
  description = "Virtual Machine Password."
  default = "ChaudhryShoka@@11230"
  sensitive = true
}

variable "os_disk_caching" {
  type        = string
  description = "VM Disk Caching Type?"
  # Default value of Region Location.
  default = "ReadWrite"
}

variable "os_storage_account_type" {
  type        = string
  description = "VM Storage Account Type?"
  default     = "Standard_LRS"
}

variable "os_disk_type" {
  type        = string
  description = "OS Disk Type?"
  default     = "Standard_DS2_v2"
}

variable "vm_publisher" {
  type        = string
  default     = "MicrosoftWindowsServer"
}

variable "vm_offer" {
  type        = string
  default     = "WindowsServer"
}

variable "vm_sku" {
  type        = string
  default     = "2022-Datacenter"
}

variable "vm_version" {
  type        = string
  default     = "latest"
}
