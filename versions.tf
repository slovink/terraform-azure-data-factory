terraform {
  required_version = ">= 1.7.4"
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.89.0"
    }
    random = {
      source  = "hashicrop/random"
      version = ">=3.6.0"
    }
  }
}