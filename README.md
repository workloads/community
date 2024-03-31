# Terraform Cloud Workspace: `community`

> This repository manages community tools for [@workloads](https://github.com/workloads).

## Table of Contents

<!-- TOC -->
* [Terraform Cloud Workspace: `community`](#terraform-cloud-workspace-community)
  * [Table of Contents](#table-of-contents)
  * [Requirements](#requirements)
    * [Development](#development)
  * [Usage](#usage)
    * [Inputs](#inputs)
    * [Outputs](#outputs)
  * [Notes](#notes)
    * [Sensitive Data](#sensitive-data)
  * [Contributors](#contributors)
  * [License](#license)
<!-- TOC -->

## Requirements

- HashiCorp Terraform `1.7.x` or [newer](https://developer.hashicorp.com/terraform/downloads)

### Development

For development and testing of this repository:

- `terraform-docs` `0.17.0` or [newer](https://terraform-docs.io/user-guide/installation/)

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
| discord_administrators | List of Discord User IDs to add to the Administrator Role. | `list(string)` | no |
| discord_bots | List of Discord User IDs to add to the Bots Role. | `list(string)` | no |
| discord_colors | Hex Codes for Discord Roles. | <pre>object({<br>    administrators = string<br>    bots           = string<br>    maintainers    = string<br>    moderators     = string<br>  })</pre> | no |
| discord_maintainers | List of Discord User IDs to add to the Maintainers Role. | `list(string)` | no |
| discord_moderators | List of Discord User IDs to add to the Moderators Role. | `list(string)` | no |

### Outputs

| Name | Description |
|------|-------------|
| discord_category_channel_general | Exported Attributes for `discord_category_channel.general`. |
| discord_category_channel_info | Exported Attributes for `discord_category_channel.info`. |
| discord_category_channel_internal | Exported Attributes for `discord_category_channel.internal`. |
| discord_category_channel_labs | Exported Attributes for `discord_category_channel.labs`. |
| discord_role_administrators | Exported Attributes for `discord_role.administrators`. |
| discord_role_bots | Exported Attributes for `discord_role.bots`. |
| discord_role_everyone | Exported Attributes for `discord_role_everyone.everyone`. |
| discord_role_everyone_view_only | Exported Attributes for `discord_role.everyone_view_only`. |
| discord_role_moderators | Exported Attributes for `discord_role.moderators`. |
| discord_server | Exported Attributes for `discord_server`. |
| discord_system_channel | Exported Attributes for `discord_system_channel.main`. |
| discord_text_channel_general | Exported Attributes for `discord_text_channel.general`. |
| discord_text_channel_internal | Exported Attributes for `discord_text_channel.internal`. |
| discord_text_channel_notifications | Exported Attributes for `discord_text_channel.notifications`. |
| discord_text_channel_rules | Exported Attributes for `discord_text_channel.rules`. |
<!-- END_TF_DOCS -->

## Notes

### Sensitive Data

Terraform state may contain [sensitive data](https://developer.hashicorp.com/terraform/language/state/sensitive-data). This workspace uses [Terraform Cloud](https://developer.hashicorp.com/terraform/cloud-docs) to safely store state, and encrypt the data at rest.

## Contributors

For a list of current (and past) contributors to this repository, see [GitHub](https://github.com/workloads/community/graphs/contributors).

## License

Licensed under the Apache License, Version 2.0 (the "License").

You may download a copy of the License at [apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0).

See the License for the specific language governing permissions and limitations under the License.
