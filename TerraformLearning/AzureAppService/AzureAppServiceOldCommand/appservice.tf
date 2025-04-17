resource "azurerm_app_service" "learinglabappservice" {
  name                = "learinglab-app-service"
  location            = azurerm_resource_group.LocalNameRG.location
  resource_group_name = azurerm_resource_group.LocalNameRG.name
  app_service_plan_id = azurerm_app_service_plan.appserviceplanlearninglab.id

  site_config {
    dotnet_framework_version = "v4.0"
    scm_type                 = "LocalGit"
  }

  app_settings = {
    "SOME_KEY" = "some-value"
  }
}