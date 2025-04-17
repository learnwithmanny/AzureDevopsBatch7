resource "azurerm_windows_virtual_machine" "localNameVM" {
    count = 2
    name = "VM-${count.index}"
    location = azurerm_resource_group.LocalNameRG1.location
    resource_group_name = azurerm_resource_group.LocalNameRG1.name
    size = "Standard_DS1_V2" 
    admin_username = "vmadmin"
    admin_password =  "Password1234!"
    network_interface_ids = [ element(azurerm_network_interface.localNameNIC[*].id, count.index)]
    os_disk {
      caching = "ReadWrite"
      storage_account_type = "Standard_LRS"
    }
    source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
    }


}