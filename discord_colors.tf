# see https://registry.terraform.io/providers/Lucky3028/discord/latest/docs/data-sources/discord_color
data "discord_color" "administrators" {
  hex = "#e965a5"
}

# see https://registry.terraform.io/providers/Lucky3028/discord/latest/docs/data-sources/discord_color
data "discord_color" "bots" {
  hex = "#3f3951"
}

# see https://registry.terraform.io/providers/Lucky3028/discord/latest/docs/data-sources/discord_color
data "discord_color" "maintainers" {
  hex = "#e965a5"
}
