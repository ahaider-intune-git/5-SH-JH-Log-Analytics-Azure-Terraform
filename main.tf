##################################################################################
# Terraform SMC Automation LHD Foundation Resources creation based on the 
# Refrence Architecture and Requirements 
# NSG Module
##################################################################################
# 
# LHD         :     Justice Health (JH)
# File        :     Main File
# eh Admins   :     Nane
# pgm         :     SwDCR
# Version     :     v.1.0
##################################################################################

provider "azurerm" {
    features {}
}


resource "azurerm_log_analytics_workspace" "logworkspace123" {
  name                = "SHlogworkspace"
  location            = "Eastus"
  resource_group_name = "cloud-shell-storage-southeastasia"
  sku                 = "PerGB2018"
  retention_in_days   = 30
}