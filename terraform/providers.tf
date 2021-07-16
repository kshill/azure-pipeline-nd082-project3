terraform {
  backend "azurerm" {
    storage_account_name = "tstate30595"
    container_name       = "tstate"
    key                  = "terraform.tfstate"
    resource_group_name  = "tstate"
  }
}

provider "azurerm" {
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  features {}
}