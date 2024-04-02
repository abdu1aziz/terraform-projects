terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}

provider "azurerm" {
  features {}
  # alias = "dev" # Environment Name (test/dev/prod)
  # subscription_id = "5601b367-9101-4a22-9af4-541dee535215" # If subscription id available
}

data "azurerm_client_config" "current" {}