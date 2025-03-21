## --------------------------------------
##  LOCAL VARIABLES
## --------------------------------------

locals {
  tags = var.tags
}

## --------------------------------------
##  LANDING ZONE RESOURCE GROUP
## --------------------------------------

resource "azurerm_resource_group" "this" {
  name     = var.name
  location = var.location

  tags = local.tags
}
