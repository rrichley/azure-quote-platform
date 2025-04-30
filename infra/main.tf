provider "azurerm" {
  features {}
}

data "azurerm_storage_account" "quote_sa" {
  name                = "quoteplatformsa"
  resource_group_name = "quote-platform-rg"
}

data "azurerm_storage_queue" "quote_requests" {
  name                 = "quote-requests"
  storage_account_name = data.azurerm_storage_account.quote_sa.name
}

output "storage_account_id" {
  value = data.azurerm_storage_account.quote_sa.id
}

output "queue_url" {
  value = data.azurerm_storage_queue.quote_requests.id
}
