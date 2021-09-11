# terraform-kubernetes-stateless-deployment
Stateless K8s deployment

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | n/a |

## Resources

| Name | Type |
|------|------|
| [kubernetes_deployment.deployment](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/deployment) | resource |
| [kubernetes_service.service](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/service) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_config_map"></a> [config\_map](#input\_config\_map) | n/a | `string` | `null` | no |
| <a name="input_deployment_strategy"></a> [deployment\_strategy](#input\_deployment\_strategy) | n/a | `string` | `"Recreate"` | no |
| <a name="input_image"></a> [image](#input\_image) | n/a | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | n/a | `string` | n/a | yes |
| <a name="input_port"></a> [port](#input\_port) | n/a | `string` | `null` | no |
| <a name="input_port_name"></a> [port\_name](#input\_port\_name) | n/a | `string` | `"port"` | no |
| <a name="input_port_protocol"></a> [port\_protocol](#input\_port\_protocol) | n/a | `string` | `"TCP"` | no |
| <a name="input_svc_type"></a> [svc\_type](#input\_svc\_type) | n/a | `string` | `"ClusterIP"` | no |
