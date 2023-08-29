# Terraform Cloud Workspace: `community`

> This directory manages the lifecycle of the community tools for [@workloads](https://github.com/workloads).

## Table of Contents

<!-- TOC -->
* [Terraform Cloud Workspace: `community`](#terraform-cloud-workspace-community)
  * [Table of Contents](#table-of-contents)
  * [Usage](#usage)
    * [Inputs](#inputs)
    * [Outputs](#outputs)
  * [Author Information](#author-information)
  * [License](#license)
<!-- TOC -->

## Usage

This repository uses a standard Terraform workflow (`init`, `plan`, `apply`).

For more information, including detailed usage guidelines, see the [Terraform documentation](https://developer.hashicorp.com/terraform/cli/commands).

<!-- BEGIN_TF_DOCS -->
### Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| discord_application_id | Discord Application Identifier. | `string` | yes |
| discord_server_id | Discord Server Identifier. | `string` | yes |
| discord_token | Discord API Token. | `string` | yes |
| project_identifier | Human-readable Project Identifier. | `string` | yes |

## Author Information

This repository is maintained by the contributors listed on [GitHub](https://github.com/workloads/community/graphs/contributors).

## License

Licensed under the Apache License, Version 2.0 (the "License").

You may obtain a copy of the License at [apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0).

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an _"AS IS"_ basis, without WARRANTIES or conditions of any kind, either express or implied.

See the License for the specific language governing permissions and limitations under the License.
