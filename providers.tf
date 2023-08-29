# The HCP Provider is set to retrieve configuration from the executing environment
# see https://registry.terraform.io/providers/Lucky3028/discord/latest/docs
provider "discord" {
  token = var.discord_token
}
