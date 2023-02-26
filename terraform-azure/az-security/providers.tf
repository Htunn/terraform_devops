terraform {
  required_version = ">=1.0"
  
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>3.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }

    tls = {
      source = "hashicorp/tls"
      version = "~>4.0"
    }
  }
  backend "azurerm" {
        resource_group_name  = "tfstate"
        storage_account_name = "tfstate4376"
        container_name       = "tf-az-security"
        key                  = "terraform.tfstate"
    }
}

provider "azurerm" {
  features {}

  subscription_id   = ""
  tenant_id         = ""
  client_id         = ""
  client_secret     = ""
}

provider "random" {
}