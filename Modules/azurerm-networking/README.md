# networking

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_subnet.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_virtual_network.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |
| [azurerm_virtual_network_peering.destination_to_source](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering) | resource |
| [azurerm_virtual_network_peering.source_to_destination](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering) | resource |
| [azurerm_virtual_network.destination](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/virtual_network) | data source |
| [azurerm_virtual_network.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/virtual_network) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ackey"></a> [ackey](#input\_ackey) | Not required if MSI is used to authenticate to the SA where state file is | `any` | `null` | no |
| <a name="input_location"></a> [location](#input\_location) | (Required) The location to deploy resources to. | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Specifies the name of the resource group in which to create the Azure Network Base Infrastructure Resources. | `string` | n/a | yes |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | The virtal networks subnets with their properties. | <pre>map(object({<br>    name              = string<br>    vnet_key          = string<br>    vnet_name         = string<br>    address_prefixes  = list(string)<br>    pe_enable         = bool<br>    service_endpoints = list(string)<br>    delegation = list(object({<br>      name = string<br>      service_delegation = list(object({<br>        name    = string<br>        actions = list(string)<br>      }))<br>    }))<br>  }))</pre> | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Additional Network resources tags, in addition to the resource group tags. | `map(string)` | `{}` | no |
| <a name="input_virtual_networks"></a> [virtual\_networks](#input\_virtual\_networks) | The virtal networks with their properties. | <pre>map(object({<br>    name          = string<br>    address_space = list(string)<br>    dns_servers   = list(string)<br>    ddos_protection_plan = object({<br>      id     = string<br>      enable = bool<br>    })<br>  }))</pre> | `{}` | no |
| <a name="input_vnet_peering"></a> [vnet\_peering](#input\_vnet\_peering) | Vnet Peering to the destination Vnet | <pre>map(object({<br>    destination_vnet_name        = string<br>    destination_vnet_rg          = string<br>    vnet_key                     = string<br>    allow_virtual_network_access = bool<br>    allow_forwarded_traffic      = bool<br>    allow_gateway_transit        = bool<br>    use_remote_gateways          = bool<br>  }))</pre> | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_map_subnet_ids"></a> [map\_subnet\_ids](#output\_map\_subnet\_ids) | n/a |
| <a name="output_map_subnets"></a> [map\_subnets](#output\_map\_subnets) | n/a |
| <a name="output_map_subnets_serviceendpoints"></a> [map\_subnets\_serviceendpoints](#output\_map\_subnets\_serviceendpoints) | n/a |
| <a name="output_map_vnet_ids"></a> [map\_vnet\_ids](#output\_map\_vnet\_ids) | n/a |
| <a name="output_map_vnets"></a> [map\_vnets](#output\_map\_vnets) | n/a |
| <a name="output_private_endpoint_subnets"></a> [private\_endpoint\_subnets](#output\_private\_endpoint\_subnets) | n/a |
| <a name="output_private_endpoint_vnets"></a> [private\_endpoint\_vnets](#output\_private\_endpoint\_vnets) | n/a |
| <a name="output_subnet_ids"></a> [subnet\_ids](#output\_subnet\_ids) | Subnets |
| <a name="output_subnets_with_serviceendpoints"></a> [subnets\_with\_serviceendpoints](#output\_subnets\_with\_serviceendpoints) | n/a |
| <a name="output_vnet_ids"></a> [vnet\_ids](#output\_vnet\_ids) | n/a |
| <a name="output_vnet_locations"></a> [vnet\_locations](#output\_vnet\_locations) | n/a |
| <a name="output_vnet_names"></a> [vnet\_names](#output\_vnet\_names) | n/a |
| <a name="output_vnet_peering_dest_to_source"></a> [vnet\_peering\_dest\_to\_source](#output\_vnet\_peering\_dest\_to\_source) | n/a |
| <a name="output_vnet_peering_source_to_dest"></a> [vnet\_peering\_source\_to\_dest](#output\_vnet\_peering\_source\_to\_dest) | VNet Peering |
| <a name="output_vnet_rgnames"></a> [vnet\_rgnames](#output\_vnet\_rgnames) | n/a |
| <a name="output_vnets"></a> [vnets](#output\_vnets) | VNets |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
