terraform {
  # see https://developer.hashicorp.com/terraform/language/settings/terraform-cloud
  cloud {
    # see https://developer.hashicorp.com/terraform/cli/cloud/settings#organization
    organization = "workloads"

    # see https://developer.hashicorp.com/terraform/cli/cloud/settings#workspaces
    workspaces {
      name = "community"
    }
  }

  # see https://developer.hashicorp.com/terraform/language/settings#specifying-provider-requirements
  required_providers {
    # see # see https://registry.terraform.io/providers/Lucky3028/discord/1.6.0
    discord = {
      source  = "Lucky3028/discord"
      version = "1.6.1"
    }
  }

  # see https://developer.hashicorp.com/terraform/language/settings#specifying-a-required-terraform-version
  required_version = ">= 1.6.0, < 2.0.0"
}
