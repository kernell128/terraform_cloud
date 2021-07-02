
variable "subscription_id" {}
variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}

variable "name" {
  default = "simple_sample_azrg"
}
variable "location" {
  default = "Brazil South"
}
variable "vpc_cnf" {
  type        = map(any)
  description = "VPC Configuration MAP Values"
  default = {
    nsg_dmz_name   = "nsg_dmz"
    nsg_app_name   = "nsg_dmz"
    nsg_dbs_name   = "nsg_dmz"
    ddos_plan_name = "ddos_plan_1"
    vpc_name       = "bz"
    vpc_cidr       = "172.30.0.0/16"
    dns_server_1   = "172.30.0.4"
    dns_server_2   = "172.30.0.5"
    dmz_name       = "dmz"
    app_name       = "app"
    dbs_name       = "dbs"
    dmz_cidr       = "172.30.1.0/24"
    app_cidr       = "172.30.2.0/24"
    dbs_cidr       = "172.30.3.0/24"
  }
}
