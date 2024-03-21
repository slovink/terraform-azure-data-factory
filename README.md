<!-- This file was automatically generated by the `geine`. Make all changes to `README.yaml` and run `make readme` to rebuild this file. -->

<p align="center"> <img src="https://user-images.githubusercontent.com/50652676/62349836-882fef80-b51e-11e9-99e3-7b974309c7e3.png" width="100" height="100"></p>


<h1 align="center">
    Terraform AZURE DATA FACTORY
</h1>

<p align="center" style="font-size: 1.2rem;">
    Terraform module to create data factory resource on AZURE.
     </p>

<p align="center">

<a href="https://www.terraform.io">
  <img src="https://img.shields.io/badge/Terraform-v1.7.4-green" alt="Terraform">
</a>
<a href="https://github.com/slovink/terraform-azure-data-factory/blob/master/LICENSE">
  <img src="https://img.shields.io/badge/License-APACHE-blue.svg" alt="Licence">
</a>

## Prerequisites

This module has a few dependencies:


## Examples


**IMPORTANT:** Since the `master` branch used in `source` varies based on new modifications, we suggest that you use the release versions [here](https://github.com/slovink/terraform-azure-data-factory/releases).


### Simple Example
Here is an example of how you can use this module in your inventory structure:
#### default data factory
```hcl
  module "data_factory" {
    depends_on                = [module.resource_group]
    source                    = "git@github.com:slovink/terraform-azure-data-factory.git?ref=1.0.0"
    name                      = "app"
    environment               = "test"
    resource_group_name       = module.resource_group.resource_group_name
    location                  = module.resource_group.resource_group_location

  ```

# Examples
For detailed examples on how to use this module, please refer to the [example](https://github.com/slovink/terraform-azure-data-factory/blob/master/_example) directory within this repository.

# License
This Terraform module is provided under the **MIT** License. Please see the [LICENSE](https://github.com/slovink/terraform-azure-data-factory/blob/master/LICENSE) file for more details.



## Inputs

| Name | Description                                                                                                                                                                                                                                                                | Type | Default                                           | Required |
|------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------|---------------------------------------------------|:--------:|
| application | Application (e.g. `cd` or `slovink`).                                                                                                                                                                                                                                      | `string` | `""`                                              | no |
| cmk\_encryption\_enabled | n/a                                                                                                                                                                                                                                                                        | `bool` | `false`                                           | no |
| create | Used when creating the Resource Group.                                                                                                                                                                                                                                     | `string` | `"60m"`                                           | no |
| delete | Used when deleting the Resource Group.                                                                                                                                                                                                                                     | `string` | `"60m"`                                           | no |
| enable\_private\_endpoint | enable or disable private endpoint to storage account                                                                                                                                                                                                                      | `bool` | `false`                                           | no |
| enabled | Flag to control the module creation.                                                                                                                                                                                                                                       | `bool` | `true`                                            | no |
| environment | Environment (e.g. `prod`, `dev`, `staging`).                                                                                                                                                                                                                               | `string` | `""`                                              | no |
| existing\_private\_dns\_zone | Name of the existing private DNS zone                                                                                                                                                                                                                                      | `string` | `null`                                            | no |
| existing\_private\_dns\_zone\_resource\_group\_name | The name of the existing resource group                                                                                                                                                                                                                                    | `string` | `""`                                              | no |
| identity\_ids | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Storage Account.                                                                                                                                                                             | `list(string)` | `null`                                            | no |
| identity\_type | Specifies the type of Managed Service Identity that should be configured on this Storage Account. Possible values are `SystemAssigned`, `UserAssigned`, `SystemAssigned, UserAssigned` (to enable both).                                                                   | `string` | `"SystemAssigned"`                                | no |
| key\_vault\_id | n/a                                                                                                                                                                                                                                                                        | `string` | `null`                                            | no |
| label\_order | Label order, e.g. `name`,`application`.                                                                                                                                                                                                                                    | `list(any)` | <pre>[<br>  "name",<br>  "environment"<br>]</pre> | no |
| location | Location where resource should be created.                                                                                                                                                                                                                                 | `string` | `""`                                              | no |
| machine\_count | Number of Virtual Machines to create.                                                                                                                                                                                                                                      | `number` | `0`                                               | no |
| managed\_virtual\_network\_enabled | Is default virtual machine enabled for data factory or not.                                                                                                                                                                                                                | `bool` | `null`                                            | no |
| managedby | ManagedBy, eg 'slovink'                                                                                                                                                                                                                         | `string` | `"contact@slovink.com"`                           | no |
| name | Name  (e.g. `app` or `cluster`).                                                                                                                                                                                                                                           | `string` | `""`                                              | no |
| principal\_id | The ID of the Principal (User, Group or Service Principal) to assign the Role Definition to. Changing this forces a new resource to be created.                                                                                                                            | `list(string)` | `[]`                                              | no |
| private\_dns\_zone\_name | The name of the private dns zone name which will used to create private endpoint link.                                                                                                                                                                                     | `string` | `"privatelink.blob.core.windows.net"`             | no |
| public\_network\_enabled | Is the Data Factory visible to the public network? Defaults to true.                                                                                                                                                                                                       | `bool` | `false`                                           | no |
| read | Used when retrieving the Resource Group.                                                                                                                                                                                                                                   | `string` | `"5m"`                                            | no |
| repository | Terraform current module repo                                                                                                                                                                                                                                              | `string` | `""`                                              | no |
| resource\_group\_name | The name of the resource group in which to create the virtual network.                                                                                                                                                                                                     | `string` | `""`                                              | no |
| shared\_access\_key\_enabled | Indicates whether the storage account permits requests to be authorized with the account access key via Shared Key. If false, then all requests, including shared access signatures, must be authorized with Azure Active Directory (Azure AD). The default value is true. | `bool` | `true`                                            | no |
| subnet\_id | The resource ID of the subnet                                                                                                                                                                                                                                              | `string` | `""`                                              | no |
| tags | Additional tags (e.g. map(`BusinessUnit`,`XYZ`).                                                                                                                                                                                                                           | `map(any)` | `{}`                                              | no |
| update | Used when updating the Resource Group.                                                                                                                                                                                                                                     | `string` | `"60m"`                                           | no |
| virtual\_network\_id | The name of the virtual network                                                                                                                                                                                                                                            | `string` | `""`                                              | no |

## Outputs

| Name | Description |
|------|-------------|
| id | n/a |
| identity | n/a |




## Testing
In this module testing is performed with [terratest](https://github.com/gruntwork-io/terratest) and it creates a small piece of infrastructure, matches the output like ARN, ID and Tags name etc and destroy infrastructure in your AWS account. This testing is written in GO, so you need a [GO environment](https://golang.org/doc/install) in your system.

You need to run the following command in the testing folder:
```hcl
  go test -run Test
```



## Feedback
If you come accross a bug or have any feedback, please log it in our [issue tracker](https://github.com/slovink/terraform-azure-data-factory/issues), or feel free to drop us an email at [contact@slovink.com](contact@slovink.com).

If you have found it worth your time, go ahead and give us a ★ on [our GitHub](https://github.com/slovink/terraform-azure-data-factory)!

## About us

At [slovink][website], we offer expert guidance, implementation support and services to help organisations accelerate their journey to the cloud. Our services include docker and container orchestration, cloud migration and adoption, infrastructure automation, application modernisation and remediation, and performance engineering.

<p align="center">We are <b> The Cloud Experts!</b></p>
<hr />
<p align="center">We ❤️  <a href="https://github.com/slovink">Open Source</a> and you can check out <a href="https://github.com/slovink">our other modules</a> to get help with your new Cloud ideas.</p>

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.7.4 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=3.89.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >=3.6.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >=3.89.0 |
| <a name="provider_random"></a> [random](#provider\_random) | >=3.6.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_labels"></a> [labels](#module\_labels) | git@github.com:slovink/terraform-azure-labels.git | 1.0.0 |

## Resources

| Name | Type |
|------|------|
| [azurerm_data_factory.factory](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory) | resource |
| [azurerm_key_vault_key.kvkey](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_key) | resource |
| [azurerm_private_dns_a_record.arecord](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_a_record) | resource |
| [azurerm_private_dns_zone.dnszone](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_zone) | resource |
| [azurerm_private_endpoint.pep](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_endpoint) | resource |
| [azurerm_role_assignment.identity_assigned](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_user_assigned_identity.identity](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/user_assigned_identity) | resource |
| [random_string.random](https://registry.terraform.io/providers/hashicrop/random/latest/docs/resources/string) | resource |
| [azurerm_private_endpoint_connection.private-ip-0](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/private_endpoint_connection) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cmk_encryption_enabled"></a> [cmk\_encryption\_enabled](#input\_cmk\_encryption\_enabled) | variable "principal\_id" { type        = list(string) default     = [] description = " The ID of the Principal (User, Group or Service Principal) to assign the Role Definition to. Changing this forces a new resource to be created." } | `bool` | `false` | no |
| <a name="input_enable_private_endpoint"></a> [enable\_private\_endpoint](#input\_enable\_private\_endpoint) | enable or disable private endpoint to storage account | `bool` | `false` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Flag to control the module creation. | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment (e.g. `prod`, `dev`, `staging`). | `string` | `""` | no |
| <a name="input_existing_private_dns_zone"></a> [existing\_private\_dns\_zone](#input\_existing\_private\_dns\_zone) | Name of the existing private DNS zone | `string` | `null` | no |
| <a name="input_existing_private_dns_zone_resource_group_name"></a> [existing\_private\_dns\_zone\_resource\_group\_name](#input\_existing\_private\_dns\_zone\_resource\_group\_name) | The name of the existing resource group | `string` | `""` | no |
| <a name="input_identity_type"></a> [identity\_type](#input\_identity\_type) | Specifies the type of Managed Service Identity that should be configured on this Storage Account. Possible values are `SystemAssigned`, `UserAssigned`, `SystemAssigned, UserAssigned` (to enable both). | `string` | `"SystemAssigned"` | no |
| <a name="input_key_vault_id"></a> [key\_vault\_id](#input\_key\_vault\_id) | variable "identity\_ids" { description = "Specifies a list of User Assigned Managed Identity IDs to be assigned to this Storage Account." type        = list(string) default     = null } | `string` | `null` | no |
| <a name="input_label_order"></a> [label\_order](#input\_label\_order) | Label order, e.g. `name`,`application`. | `list(any)` | <pre>[<br>  "name",<br>  "environment"<br>]</pre> | no |
| <a name="input_location"></a> [location](#input\_location) | Location where resource should be created. | `string` | `""` | no |
| <a name="input_managed_virtual_network_enabled"></a> [managed\_virtual\_network\_enabled](#input\_managed\_virtual\_network\_enabled) | Is default virtual machine enabled for data factory or not. | `bool` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Name  (e.g. `app` or `cluster`). | `string` | `""` | no |
| <a name="input_private_dns_zone_name"></a> [private\_dns\_zone\_name](#input\_private\_dns\_zone\_name) | The name of the private dns zone name which will used to create private endpoint link. | `string` | `"privatelink.blob.core.windows.net"` | no |
| <a name="input_public_network_enabled"></a> [public\_network\_enabled](#input\_public\_network\_enabled) | Is the Data Factory visible to the public network? Defaults to true. | `bool` | `false` | no |
| <a name="input_repository"></a> [repository](#input\_repository) | Terraform current module repo | `string` | `""` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the virtual network. | `string` | `""` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | The resource ID of the subnet | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_identity"></a> [identity](#output\_identity) | n/a |
<!-- END_TF_DOCS -->