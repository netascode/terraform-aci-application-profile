<!-- BEGIN_TF_DOCS -->
[![Tests](https://github.com/netascode/terraform-aci-application-profile/actions/workflows/test.yml/badge.svg)](https://github.com/netascode/terraform-aci-application-profile/actions/workflows/test.yml)

# Terraform ACI Application Profile Module

Manages ACI Application Profile

Location in GUI:
`Tenants` » `XXX` » `Application Profiles`

## Examples

```hcl
module "aci_application_profile" {
  source = "netascode/application-profile/aci"

  tenant      = "ABC"
  name        = "AP1"
  alias       = "AP1-ALIAS"
  description = "My Description"
}

```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aci"></a> [aci](#requirement\_aci) | >= 0.2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aci"></a> [aci](#provider\_aci) | >= 0.2.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_tenant"></a> [tenant](#input\_tenant) | Tenant name. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Application profile name. | `string` | n/a | yes |
| <a name="input_alias"></a> [alias](#input\_alias) | Application profile alias. | `string` | `""` | no |
| <a name="input_description"></a> [description](#input\_description) | Application profile description. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dn"></a> [dn](#output\_dn) | Distinguished name of `fvAp` object. |
| <a name="output_name"></a> [name](#output\_name) | Application profile name. |

## Resources

| Name | Type |
|------|------|
| [aci_rest.fvAp](https://registry.terraform.io/providers/netascode/aci/latest/docs/resources/rest) | resource |
<!-- END_TF_DOCS -->