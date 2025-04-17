resource "azurerm_linux_virtual_machine" "localNameLinuxVM1" {

name = "Linux-Vm1"
resource_group_name = azurerm_resource_group.localNameRG123.name
location = azurerm_resource_group.localNameRG123.location
size = "Standard_DS1_V2"
admin_username = "vmadmin"
admin_password = "Azure@12345"
network_interface_ids = [ azurerm_network_interface.localNameNIC-VM1.id ]
os_disk {
  caching = "ReadWrite"
  storage_account_type = "Standard_LRS"
}

source_image_reference {
   publisher = "Canonical"
   offer     = "ubuntu-24_04-lts"
   sku       = "server"
   version   = "latest"
}
disable_password_authentication = false



}
