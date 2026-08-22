rgs = {
  rg1 = {
    name     = "rg-vivek"
    location = "central india"
  }

}

vnet = {
  vnet1 = {
    name                = "vnet-vicky"
    location            = "central india"
    resource_group_name = "rg-vivek"
    address_space       = ["10.0.0.0/16"]
  }
}

snets = {
  snet1 = {
    name                 = "frontend-subnet"
    resource_group_name  = "rg-vivek"
    virtual_network_name = "vnet-vicky"
    address_prefixes     = ["10.0.1.0/24"]


  }
}
