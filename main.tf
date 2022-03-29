provider "azurerm" {
  version = ">=2.2.0"
  features {}
}

locals {
  custom_tags = {
    environment = "dev"
    team = "support"
  }
}

resource "azurerm_resource_group" "app-rg"{
    name     = var.app_server_rg
    location = var.app_server_location

    tags = local.custom_tags
      
      }

