rgspre = {
  "rg1" = {
    name     = "rg-morning"
    location = "Australia East"
  }

  "rg2" = {
    name     = "rg-afternoon"
    location = "Centralindia"
  }


}




stgspre = {
  "stg1" = {
    name                     = "morningstg"
    resource_group_name      = "rg-morning"
    location                 = "Australia East"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }

  "rg2" = {
    name                     = "afternoonstg"
    resource_group_name      = "rg-afternoon"
    location                 = "Centralindia"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }


}





subnetspre = {
  "subnet1" = {
    name                 = "morningsubnet101"
    resource_group_name  = "rg-morning"
    virtual_network_name = "morningvnet"
    address_prefixes     = ["10.0.0.32/28"] # /28 = 16ips in subnet01
  }

  "subnet2" = {
    name                 = "morningsubnet102"
    resource_group_name  = "rg-morning"
    virtual_network_name = "morningvnet"
    address_prefixes     = ["10.0.0.0/27"] # /27 =32ips in subnet02

} }


vnetspre = {
  "vnet1" = {
    name                = "morningvnet"
    location            = "Australia East"
    resource_group_name = "rg-morning"
    address_space       = ["10.0.0.0/25"] #/25 = 128 ips in vnet
  }
}