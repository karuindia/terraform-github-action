provider "azurerm" {
  features {}
}

terraform {
  required_version = ">= 0.11"
  
  backend "azurerm" {
    storage_account_name = "terrformstorage"
    resource_group_name = "terraformstate"
    container_name       = "terraform"
    key                  = "terraform.tfstate"
    subscription_id = "f16b4daf-8ce3-47ba-9a7b-55c4825807b7"
       features{
    }
  }
}