resource "azurerm_kubernetes_cluster" "default" {
  name                = "aks-001"
  location            = azurerm_resource_group.LocalNameRG1.location
  resource_group_name = azurerm_resource_group.LocalNameRG1.name
  dns_prefix          = "dns-k8s-test"
  kubernetes_version  = "1.30.7"

  default_node_pool {
    name            = "systempool"
    node_count      = 1
    vm_size         = "Standard_D2s_v3"
    
  }

 identity {
    type = "SystemAssigned"
  }
 /* service_principal {
  //  client_id     = var.clientId
    //client_secret = var.clientSecret
  }
  */

  role_based_access_control_enabled = true

  tags = {
    environment = "Lab"
  }
}