# see https://registry.terraform.io/providers/Lucky3028/discord/latest/docs/resources/member_roles
resource "discord_member_roles" "administrators" {
  # see https://developer.hashicorp.com/terraform/language/meta-arguments/for_each
  for_each = toset(var.discord_administrators)

  user_id   = each.value
  server_id = var.discord_server_id

  role {
    role_id  = discord_role.administrators.id
    has_role = true
  }
}

# see https://registry.terraform.io/providers/Lucky3028/discord/latest/docs/resources/member_roles
resource "discord_member_roles" "bots" {
  # see https://developer.hashicorp.com/terraform/language/meta-arguments/for_each
  for_each = toset(var.discord_bots)

  user_id   = each.value
  server_id = var.discord_server_id

  role {
    role_id  = discord_role.bots.id
    has_role = true
  }
}

# see https://registry.terraform.io/providers/Lucky3028/discord/latest/docs/resources/member_roles
resource "discord_member_roles" "maintainers" {
  # see https://developer.hashicorp.com/terraform/language/meta-arguments/for_each
  for_each = toset(var.discord_maintainers)

  user_id   = each.value
  server_id = var.discord_server_id

  role {
    role_id  = discord_role.maintainers.id
    has_role = true
  }
}

# see https://registry.terraform.io/providers/Lucky3028/discord/latest/docs/resources/member_roles
resource "discord_member_roles" "moderators" {
  # see https://developer.hashicorp.com/terraform/language/meta-arguments/for_each
  for_each = toset(var.discord_moderators)

  user_id   = each.value
  server_id = var.discord_server_id

  role {
    role_id  = discord_role.moderators.id
    has_role = true
  }
}
