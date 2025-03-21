# Terraform Azure Resource Group Module

This Terraform module is used to create and manage an Azure Resource Group in Microsoft Azure.

## Features

- Creates an Azure Resource Group.
- Supports tagging for resource organization.

## Requirements

- Terraform version `>= 1.10`
- AzureRM provider version `>= 4`

## Usage

```hcl
module "resource_group" {
  source  = "./modules/terraform-azurerm-rg"

  name     = "example-resource-group"
  location = "East US"
  tags = {
    Environment = "Production"
    Owner       = "Team"
  }
}
```

## Inputs

| Name     | Type         | Default | Description                          |
|----------|--------------|---------|--------------------------------------|
| `name`   | `string`     | n/a     | The name of the resource group.      |
| `location` | `string`   | n/a     | Location of the resource group.      |
| `tags`   | `map(string)`| `{}`    | Map of tags to apply to the resource group. |

## Outputs

| Name       | Description                          |
|------------|--------------------------------------|
| `id`       | The ID of the created resource group.|
| `name`     | The name of the resource group.      |
| `location` | The location of the resource group.  |

## Providers

| Name     | Version |
|----------|---------|
| `azurerm`| `>= 4`  |

## Resources

- `azurerm_resource_group.this`: The Azure Resource Group created by this module.
