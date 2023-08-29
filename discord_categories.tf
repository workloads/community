# see https://registry.terraform.io/providers/Lucky3028/discord/latest/docs/resources/category_channel
resource "discord_category_channel" "info" {
  name      = "Info"
  server_id = var.discord_server_id
  position  = 0
}

# see https://registry.terraform.io/providers/Lucky3028/discord/latest/docs/resources/category_channel
resource "discord_category_channel" "general" {
  name      = "General"
  server_id = var.discord_server_id
  position  = 1
}

# see https://registry.terraform.io/providers/Lucky3028/discord/latest/docs/resources/category_channel
resource "discord_category_channel" "internal" {
  name      = "Internal"
  server_id = var.discord_server_id
  position  = 3
}

# see https://registry.terraform.io/providers/Lucky3028/discord/latest/docs/resources/category_channel
resource "discord_category_channel" "labs" {
  name      = "Labs"
  server_id = var.discord_server_id
  position  = 2
}
