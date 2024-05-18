# terraform-google-gitlab
<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 5.29.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_compute_address.gitlab](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address) | resource |
| [google_compute_instance.gitlab](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance) | resource |
| [google_service_account.gitlab](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account) | resource |
| [google_compute_image.gitlab](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/compute_image) | data source |
| [google_compute_zones.available](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/compute_zones) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_disk_size"></a> [disk\_size](#input\_disk\_size) | n/a | `number` | `50` | no |
| <a name="input_disk_type"></a> [disk\_type](#input\_disk\_type) | n/a | `string` | `"pd-ssd"` | no |
| <a name="input_domain"></a> [domain](#input\_domain) | n/a | `string` | n/a | yes |
| <a name="input_machine_type"></a> [machine\_type](#input\_machine\_type) | n/a | `string` | `"e2-standard-2"` | no |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | `"gitlab"` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | n/a | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | n/a | `string` | n/a | yes |
| <a name="input_subnetwork"></a> [subnetwork](#input\_subnetwork) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_public_ip"></a> [public\_ip](#output\_public\_ip) | n/a |
<!-- END_TF_DOCS -->