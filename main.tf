terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.0"
    }
  }
}

provider "azurerm" {
  features {}
}
module "rg" {
  source = "./modules/rg"
}

module "vnet" {
  source     = "./modules/vnet"
  depends_on = [module.rg]
}

