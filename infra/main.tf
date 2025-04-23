provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "core" {
  name     = "${var.project_name}-rg"
  location = var.location
}