resource "azurerm_network_interface" "localNameNIC-VM1" {
    name = "Linuxvm1-nic"
    location = azurerm_resource_group.localNameRG123.location
    resource_group_name = azurerm_resource_group.localNameRG123.name
    ip_configuration {
        name = "internal"
        subnet_id = azurerm_subnet.localNameSnet1.id
        private_ip_address_allocation = "Dynamic"
        public_ip_address_id = azurerm_public_ip.localNamePIP1.id
      
    }
  
}