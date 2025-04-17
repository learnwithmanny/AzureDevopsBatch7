resource "azurerm_network_interface" "localNameNIC" {
    count = 2
    name = "NIC-VM-${count.index}"
    location = azurerm_resource_group.LocalNameRG1.location
    resource_group_name = azurerm_resource_group.LocalNameRG1.name
    ip_configuration {
        name = "internal"
        subnet_id = azurerm_subnet.localNameSnet1.id
        private_ip_address_allocation = "Dynamic"
        public_ip_address_id = element(azurerm_public_ip.localNamePIP[*].id, count.index)
        
      
    }
  
}

