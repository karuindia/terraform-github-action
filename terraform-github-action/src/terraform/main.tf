provider "azurerm" {
    features {}
}

#create the resource group
resource "azurerm_resource_group" "rg" {
    name = "examplerg1"
    location = "Central India"
