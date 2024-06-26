terraform {
  required_version = ">= 1.3.9"
  
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"      
      version = "~> 3.91.0"
    }
  }
  
  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}
