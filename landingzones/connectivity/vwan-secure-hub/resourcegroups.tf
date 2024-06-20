# Resource Groups Virtual-WAN - Region 1
resource "azurerm_resource_group" "region1-rg1" {
  name     = "rg-${var.region1}-Virtual-WAN-HUB"
  location = var.region1
  tags = {
    Environment = var.environment_tag
    Function    = "Virtual-WAN-DemoLab-ResourceGroups"
  }
}
# Resource Groups Virtual-WAN - Region 2
resource "azurerm_resource_group" "region2-rg1" {
  name     = "rg-${var.region2}-Virtual-WAN-HUB"
  location = var.region2
  tags = {
    Environment = var.environment_tag
    Function    = "Virtual-WAN-HUB-ResourceGroups"
  }
}