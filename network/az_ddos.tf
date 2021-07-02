resource "azurerm_network_ddos_protection_plan" "ddos" {
  name                = var.vpc_cnf["ddos_plan_name"]
  location            = var.location
  resource_group_name = azurerm_resource_group.bozo.name
}
