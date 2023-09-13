# see https://registry.terraform.io/providers/Lucky3028/discord/latest/docs/resources/server
resource "discord_server" "main" {
  name   = title(var.project_identifier)
  region = "us-west"

  # only notify on mentions
  default_message_notifications = 1

  explicit_content_filter = 2

  # Level 0 (Low):     Must have verified email on their Discord account.
  # Level 1 (Medium):  Must also be registered on Discord for longer than 5 minutes.
  # Level 2 (High):    Must also be a member of this server for longer than 10 minutes.
  # Level 3 (Highest): Must have a verified phone on their Discord account.
  verification_level = 1
}
