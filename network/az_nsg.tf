resource "azurerm_network_security_group" "nsg_dmz" {
  name                = var.vpc_cnf["nsg_dmz_name"]
  location            = var.location
  resource_group_name = azurerm_resource_group.bozo.name
}
resource "azurerm_network_security_group" "nsg_app" {
  name                = var.vpc_cnf["nsg_app_name"]
  location            = var.location
  resource_group_name = azurerm_resource_group.bozo.name
}
resource "azurerm_network_security_group" "nsg_dbs" {
  name                = var.vpc_cnf["nsg_dbs_name"]
  location            = var.location
  resource_group_name = azurerm_resource_group.bozo.name
}
