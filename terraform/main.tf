terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.25.0"
    }
  }
  backend "azurerm" {
    use_azuread_auth = true
    #storage_account_name = "value"
    container_name = "tfstate"
    key = "terraform.tfstate"
  }
}

provider "azurerm" {
  subscription_id = var.subid
}

variable "subid" {

}

output "subid" {
  value = var.subid
}