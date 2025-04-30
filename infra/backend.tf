terraform {
  backend "azurerm" {
    resource_group_name  = "quote-platform-rg"
    storage_account_name = "quoteplatformsa"
    container_name       = "tfstate"
    key                  = "quote-platform.terraform.tfstate"
  }
}
