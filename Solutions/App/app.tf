#
# Application resources
# - app service plan, app service, app service deployment, app service slot
# ------------------------------------------------------------

# TODO: Parameterize hardcoded values
module "appservice-plan" {
  source = "../../Modules/azurerm-appservice-plan"

  name = module.azurecaf-app.results["azurerm_app_service_plan"]

  resource_group_name = module.app-rg.name
  location            = module.app-rg.location

  sku_name = "S2"
  os_type  = "Linux"

  worker_count             = null
  per_site_scaling_enabled = false
  zone_balancing_enabled   = false

  tags = module.azurecaf-app.tags
}

module "linux-webapp" {
  source = "../../Modules/azurerm-appservice-linux-webapp"

  name = module.azurecaf-app.results["azurerm_app_service"]

  resource_group_name = module.app-rg.name
  location            = module.app-rg.location
  service_plan_id     = module.appservice-plan.id
  subnet_id           = var.serverfarm_subnet_id

  app_settings = {
    ASPNETCORE_ENVIRONMENT = "Development"
  }

  tags = module.azurecaf-app.tags
}
