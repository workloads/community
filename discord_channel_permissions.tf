# see https://registry.terraform.io/providers/Lucky3028/discord/latest/docs/resources/channel_permission
resource "discord_channel_permission" "internal" {
  channel_id   = discord_category_channel.internal.id
  type         = "role"
  overwrite_id = discord_role.moderators.id
  allow        = data.discord_permission.moderators.allow_bits
  deny         = data.discord_permission.everyone.deny_bits
}

# see https://registry.terraform.io/providers/Lucky3028/discord/latest/docs/resources/channel_permission
resource "discord_channel_permission" "minecraft_bots" {
  channel_id   = discord_text_channel.minecraft_bots.id
  type         = "role"
  overwrite_id = discord_role.everyone_view_only.id
  allow        = data.discord_permission.bots.allow_bits
  deny         = data.discord_permission.everyone.deny_bits
}
