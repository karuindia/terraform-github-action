terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      versversion = "=2.46.0"
    }
  }
}
backend "azurerm" {
    resource_group_name  = "terrformstorage"
    storage_account_name = "terraformstate"
    container_name       = "terraform"
    #subscription_id      = "f16b4daf-8ce3-47ba-9a7b-55c4825807b7"
    key                  = "test.terraform.tfstate"
  }


# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  # subscription_id = var.subscription_id
  # client_id       = var.client_id
  # client_secret   = var.client_secret
  # tenant_id       = var.tenant_id
}



# Create a resource group
resource "azurerm_resource_group" "rg" {
  name     = "karu-rg"
  location = "West Europe"
}
