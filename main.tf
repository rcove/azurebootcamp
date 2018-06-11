# Terraform defintion for a basic network in Azure
# Configure the Azure Provider
provider "azurerm" { }

# Create a resource group
resource "azurerm_resource_group" "network" {
  name     = "cg-lab"
  location = "Australia Southeast"
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "network" {
  name                = "lab-network"
  address_space       = ["10.200.0.0/16"]
  location            = "Australia Southeast"
  resource_group_name = "ODL_checkpointtemplate-27038-05"

  subnet {
    name           = "frontend"
    address_prefix = "10.200.0.0/24"
  }

  subnet {
    name           = "backend"
    address_prefix = "10.200.1.0/24"
  }

  subnet {
    name           = "web"
    address_prefix = "10.200.2.0/24"
  }

  subnet {
    name           = "app"
    address_prefix = "10.200.3.0/24"
  }
}