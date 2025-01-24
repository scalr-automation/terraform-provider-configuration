terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.0.0"
    }
  }
}

provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "deploy" {
  name     = var.account_id
  location = "West Europe"
}

variable "account_id" {
  type = string
  default = "example_account"
}

output "azure_deploy" {
  description = "azure deploy data"
  value = azurerm_resource_group.deploy
}
