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

## Author Information

This repository is maintained by the contributors listed on [GitHub](https://github.com/workloads/community/graphs/contributors).

## License

Licensed under the Apache License, Version 2.0 (the "License").

You may obtain a copy of the License at [apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0).

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an _"AS IS"_ basis, without WARRANTIES or conditions of any kind, either express or implied.

See the License for the specific language governing permissions and limitations under the License.
