/*
AzureRM Terraform Cloud Sample Tutorial.
VPC
*/
resource "azurerm_virtual_network" "example" {
  name                = var.vpc_cnf["vpc_name"]
  location            = var.location
  resource_group_name = azurerm_resource_group.bozo.name
  address_space       = [var.vpc_cnf["vpc_cidr"], ]
  dns_servers         = [var.vpc_cnf["dns_server_1"], var.vpc_cnf["dns_server_2"]]

  ddos_protection_plan {
    id     = azurerm_network_ddos_protection_plan.ddos.id
    enable = false
  }

  subnet {
    name           = var.vpc_cnf["dmz_name"]
    address_prefix = var.vpc_cnf["dmz_cidr"]
    security_group = azurerm_network_security_group.nsg_dmz.id
  }

  subnet {
    name           = var.vpc_cnf["app_name"]
    address_prefix = var.vpc_cnf["app_cidr"]
    security_group = azurerm_network_security_group.nsg_app.id
  }

  subnet {
    name           = var.vpc_cnf["dbs_name"]
    address_prefix = var.vpc_cnf["dbs_cidr"]
    security_group = azurerm_network_security_group.nsg_dbs.id
  }

  tags = {
    environment = "QAS"
  }
}
