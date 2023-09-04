# see https://registry.terraform.io/providers/Lucky3028/discord/latest/docs/data-sources/discord_color
data "discord_color" "administrators" {
  hex = var.discord_colors.administrators
}

# see https://registry.terraform.io/providers/Lucky3028/discord/latest/docs/data-sources/discord_color
data "discord_color" "bots" {
  hex = var.discord_colors.bots
}

# see https://registry.terraform.io/providers/Lucky3028/discord/latest/docs/data-sources/discord_color
data "discord_color" "maintainers" {
  hex = var.discord_colors.maintainers
}
