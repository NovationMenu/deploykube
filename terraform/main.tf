resource "azurerm_kubernetes_cluster" "cluster" {
  name                = "pfr"
  location            = "eastus"
  resource_group_name = "RG-DEPLOYINFRA"
  dns_prefix = "pfr"

  default_node_pool {
    name       = "default"
    node_count = "1"
    vm_size    = "Standard_B4ms"
  }

  identity {
    type = "SystemAssigned"
  }
}