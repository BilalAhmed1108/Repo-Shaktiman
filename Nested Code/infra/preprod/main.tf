# calling azurerm resource group module
module "resource_group" {
  source = "../../azurerm_resource_group"
  rgs    = var.rgspre
}

module "storage_account" {
  depends_on = [module.resource_group]
  source     = "../../azurerm_storage_account"
  stgs       = var.stgspre
}

module "azurerm_virtual_network" {
  depends_on = [module.resource_group]
  source     = "../../azurerm_vnet"
  vnets      = var.vnetspre
}

module "azurerm_subnet" {
  depends_on = [module.azurerm_virtual_network]
  source     = "../../azurerm_subnet"
  subnets    = var.subnetspre
}