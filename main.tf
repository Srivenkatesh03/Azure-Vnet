resource "azurerm_resource_group" "dev" {
  name     = var.resource_group_name
  location = var.location

  tags = var.tags
}

module "vnet" {
  source = "./modules/Vnet"

  subscription_id      = var.subscription_id
  vnet_name           = var.vnet_name
  location            = var.location
  resource_group_name = azurerm_resource_group.dev.name

  vnet_address_space = var.vnet_address_space

  subnets = var.subnets

  tags = var.tags
}