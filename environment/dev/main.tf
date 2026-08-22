module "resource_group" {
  source = "../../module/azurerm_resource_group"
  rg     = var.rgs
}

module "virtual_network" {
  depends_on = [module.resource_group]
  source     = "../../module/azurerm_virtual_network"
  vnets      = var.vnet
}

module "subnet" {
  depends_on = [module.virtual_network]
  source     = "../../module/azurerm_subnet"
  snet       = var.snets

}

