provider “azurerm” { 
features {}
}
resource "azurerm_resource_group" "deploy" {
  name     = "example-resources"
  location = "West Europe"
}
