terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.27.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "4087152e-6430-4c7a-9c3a-d2693d1b43ce"
}

# resource "azurerm_resource_group" "rg1" {
#   name     = "rg1-vs"
#   location = "West Europe"
# }


resource "azurerm_resource_group" "rg1" {
  name=  "rg1-vs"                                  # Will be create on portal with this name
  location = "West Europe"                         # Will be create on portal with this name
}