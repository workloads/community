variable "discord_administrators" {
  type        = list(string)
  description = "List of Discord User IDs to add to the Administrator Role."

  default = [
    "377823572309180426",  # `ksatirli`, Kerim Satirli
    "1025901008527827024", # `workloads-bot`, Service Account
  ]
}

variable "discord_bots" {
  type        = list(string)
  description = "List of Discord User IDs to add to the Bots Role."

  default = [
    "1146006004828491857", # `excav-assist`, Service Account
    "820032064580485171",  # `Community Verification`, commonroom.io
    "1026312041788616754", # `workloads-bot`, Service Account
  ]
}

variable "discord_colors" {
  type = object({
    administrators = string
    bots           = string
    maintainers    = string
  })

  description = "Hex Codes for Discord Roles."

  default = {
    administrators = "#e965a5"
    bots           = "#b1baf4"
    maintainers    = "#e965a5"
  }
}

variable "discord_moderators" {
  type        = list(string)
  description = "List of Discord User IDs to add to the Moderators Role."

  default = [
    "838677533125115904",  # `Wondermine`, Taha Ali
    "1040318092976324638", # `timothymamo`, Tim Mamo
  ]
}

# Application Identifiers can be retrieved by visiting https://discord.com/developers/applications/
variable "discord_application_id" {
  type        = string
  description = "Discord Application Identifier."
}

# Server Identifiers can be retrieved by inspect the Guilds API call for `discovery-metadata`:
# see https://discord.com/api/v9/guilds/1025901757815070820/discovery-metadata
variable "discord_server_id" {
  type        = string
  description = "Discord Server Identifier."
}

# Tokens may be created on https://discord.com/developers/applications/ by going to
# "Applications", followed by "HashiCorp Terraform", then clicking "Bot" on the left
# In the resulting view, the "Token" section offers options to create and reset tokens.
#
# See https://discordjs.guide/preparations/setting-up-a-bot-application.html#what-is-a-token-anyway for additional information.
variable "discord_token" {
  type        = string
  description = "Discord API Token."
}

variable "project_identifier" {
  type        = string
  description = "Human-readable Project Identifier."
}
