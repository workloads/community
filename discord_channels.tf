# see https://github.com/Lucky3028/terraform-provider-discord/blob/main/discord/resource_discord_system_channel.go#L26
resource "discord_system_channel" "main" {
  server_id         = discord_server.main.id
  system_channel_id = discord_text_channel.notifications.id
}

# This resource represents a Discord System Announcements and Safety Notification channel
# see https://registry.terraform.io/providers/Lucky3028/discord/latest/docs/resources/text_channel
resource "discord_text_channel" "general" {
  name                     = "general"
  category                 = discord_category_channel.general.id
  position                 = 0
  server_id                = var.discord_server_id
  sync_perms_with_category = true
  topic                    = ":wave: General Discussions and Chat"
}

# see https://registry.terraform.io/providers/Lucky3028/discord/latest/docs/resources/text_channel
resource "discord_text_channel" "baedge" {
  name                     = "baedge"
  category                 = discord_category_channel.labs.id
  position                 = 0
  server_id                = var.discord_server_id
  sync_perms_with_category = false
  topic                    = ":name_badge: Nomad-orchestrated Conference Badges"
}

# see https://registry.terraform.io/providers/Lucky3028/discord/latest/docs/resources/text_channel
resource "discord_text_channel" "smart_dial" {
  name                     = "smart-dial"
  category                 = discord_category_channel.labs.id
  position                 = 1
  server_id                = var.discord_server_id
  sync_perms_with_category = false
  topic                    = ":radio_button: Nomad Smart Dial"
}

# see https://registry.terraform.io/providers/Lucky3028/discord/latest/docs/resources/text_channel
resource "discord_text_channel" "minecraft_bots" {
  name                     = "minecraft-bots"
  category                 = discord_category_channel.labs.id
  position                 = 0
  server_id                = var.discord_server_id
  sync_perms_with_category = false
  topic                    = ":robot: Status Updates and Notifications from Nomad-orchestrated Minecraft Bots"
}

# see https://registry.terraform.io/providers/Lucky3028/discord/latest/docs/resources/text_channel
resource "discord_text_channel" "internal" {
  name                     = "internal"
  category                 = discord_category_channel.internal.id
  position                 = 0
  server_id                = var.discord_server_id
  sync_perms_with_category = true
  topic                    = ":lock: Internal, non-public Conversations"
}

# This resource represents a Discord System Announcements and Safety Notification channel
# see https://registry.terraform.io/providers/Lucky3028/discord/latest/docs/resources/text_channel
resource "discord_text_channel" "notifications" {
  name                     = "notifications"
  category                 = discord_category_channel.internal.id
  position                 = 1
  server_id                = var.discord_server_id
  sync_perms_with_category = true
  topic                    = ":speaker: Notifications and Announcements from Discord"
}

# This resource represents a Discord "Rules" channel
# see https://registry.terraform.io/providers/Lucky3028/discord/latest/docs/resources/text_channel
resource "discord_text_channel" "rules" {
  name                     = "guidelines"
  category                 = discord_category_channel.info.id
  position                 = 0
  server_id                = var.discord_server_id
  sync_perms_with_category = true
  topic                    = ":white_check_mark: Rules and Guidelines"
}
