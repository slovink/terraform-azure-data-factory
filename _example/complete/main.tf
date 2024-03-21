provider "azurerm" {
  features {
    #    subscription_id = " 0a7be846-1f20-43ac-92b5-f3451e818b5e"
  }
}

## Resource Group
module "resource_group" {
  source      = "git@github.com:slovink/terraform-azure-resource-group.git?ref=1.0.0"
  name        = "app"
  environment = "test"
  label_order = ["name", "environment", ]
  location    = "North Europe"
}

module "vnet" {
  source              = "git@github.com:slovink/terraform-azure-vnet.git?ref=1.0.0"
  name                = "app"
  environment         = "test"
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.resource_group_location
  address_spaces      = ["10.0.0.0/16"]
}

module "subnet" {
  source               = "git@github.com:slovink/terraform-azure-subnet.git?ref=1.0.0"
  name                 = "app"
  environment          = "test"
  resource_group_name  = module.resource_group.resource_group_name
  location             = module.resource_group.resource_group_location
  virtual_network_name = module.vnet.name

  #subnet
  subnet_names    = ["subnet1"]
  subnet_prefixes = ["10.0.1.0/24"]

  # route_table
  enable_route_table = false
  routes = [
    {
      name           = "rt-test"
      address_prefix = "0.0.0.0/0"
      next_hop_type  = "Internet"
    }
  ]
}

module "data_factory" {
  depends_on = [
    module.resource_group
  ]
  source = "./../../"

  name                   = "app"
  environment            = "test"
  location               = module.resource_group.resource_group_location
  resource_group_name    = module.resource_group.resource_group_name
  public_network_enabled = false

  #identity
  # identity_type          = "SystemAssigned"
  # cmk_encryption_enabled = false
  # key_vault_id           = module.vault.id

  # # Private Endpoint
  # enable_private_endpoint = false
  # # virtual_network_id = module.vnet.vnet_id
  # subnet_id = module.subnet.default_subnet_id[0]
}

