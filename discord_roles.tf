# see https://registry.terraform.io/providers/Lucky3028/discord/latest/docs/resources/role
resource "discord_role" "administrators" {
  color       = data.discord_color.administrators.dec
  hoist       = true
  name        = "Administrators"
  mentionable = true
  permissions = data.discord_permission.administrators.allow_bits
  position    = 2
  server_id   = var.discord_server_id
}

# see https://registry.terraform.io/providers/Lucky3028/discord/latest/docs/resources/role
resource "discord_role" "bots" {
  color       = data.discord_color.bots.dec
  hoist       = true
  mentionable = false
  name        = "🤖 Bots"
  permissions = data.discord_permission.bots.allow_bits
  position    = 5
  server_id   = var.discord_server_id
}

# see https://registry.terraform.io/providers/Lucky3028/discord/latest/docs/resources/role_everyone
resource "discord_role" "everyone_view_only" {
  mentionable = false
  name        = "Everyone (view-only)"
  permissions = data.discord_permission.everyone_view_only.allow_bits
  position    = 1
  server_id   = var.discord_server_id
}

# see https://registry.terraform.io/providers/Lucky3028/discord/latest/docs/resources/role
resource "discord_role" "maintainers" {
  color       = data.discord_color.maintainers.dec
  hoist       = true
  mentionable = true
  name        = "Maintainers"
  permissions = data.discord_permission.moderators.allow_bits
  position    = 4
  server_id   = var.discord_server_id
}

# see https://registry.terraform.io/providers/Lucky3028/discord/latest/docs/resources/role
resource "discord_role" "moderators" {
  color       = data.discord_color.moderators.dec
  hoist       = true
  mentionable = true
  name        = "Moderators"
  permissions = data.discord_permission.moderators.allow_bits
  position    = 3
  server_id   = var.discord_server_id
}

# see https://registry.terraform.io/providers/Lucky3028/discord/latest/docs/resources/role_everyone
resource "discord_role_everyone" "everyone" {
  permissions = data.discord_permission.everyone.allow_bits
  server_id   = var.discord_server_id
}
