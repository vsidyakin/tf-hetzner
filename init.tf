data "terraform_remote_state" "network" {
  backend = "remote"

  config = {
    organization = "Hetzner-GMBH-infra"
    workspaces = {
      name = "tf-network-hcloud"
    }
  }
}
