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
