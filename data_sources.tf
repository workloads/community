# see https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/workspace
data "tfe_workspace" "main" {
  provider = tfe.viewer

  name         = "community"
  organization = "workloads"
}
