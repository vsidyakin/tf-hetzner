data "terraform_remote_state" "network" {
  backend = "remote"

  config = {
    organization = "Hetzner-Cloud"
    workspaces = {
      name = "tf-network-hcloud"
    }
  }
}
