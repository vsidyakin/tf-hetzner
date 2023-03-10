terraform {
  cloud {
    organization = "Hetzner-GMBH-infra"

    workspaces {
      name = "tf-hetzner"
    }
  }
}