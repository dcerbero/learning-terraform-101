terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

# location usc = us-east-2
resource "azurerm_resource_group" "rg" {
  name     = "myTFResourceGroup"
  location = "usc"
}
