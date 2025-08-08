resource "azurerm_resource_group" "example" {
  name     = var.rgname
  location = var.azregion
}

resource "azurerm_storage_account" "example" {
  name                     = var.storageaccount
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "container" {
  name                  = var.containername
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"
}

data "archive_file" "package" {
  type        = "zip"
  source_dir  = "${path.module}/app"
  output_path = "${path.module}/app.zip"
}

resource "azurerm_storage_blob" "blob" {
  name                   = var.blobname
  storage_account_name   = azurerm_storage_account.example.name
  storage_container_name = azurerm_storage_container.container.name
  type                   = "Block"
  source                 = data.archive_file.package.output_path
}