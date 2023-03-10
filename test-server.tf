## Create a server
resource "hcloud_server" "gravitsapa" {
  name        = "domain"
  image       = "ubuntu-22.04"
  server_type = "${var.tiny}"
  backups     = "false"
  placement_group_id = hcloud_placement_group.placement-group.id
  datacenter  = "fsn1-dc14"
  ssh_keys = data.hcloud_ssh_keys.all_keys.ssh_keys.*.name
  user_data = file("cloud_init.yaml")
  public_net {
    ipv4_enabled = true
    ipv6_enabled = false
  }
  labels = {
    "monitoring" = "monitoring_yes",
    "firewall_cf" = "with-cloudflare"
    "firewall_ssh" = "private-ds",
    "firewall_base" = "base-monitoring"
  }
}

# Network attachment
resource "hcloud_server_network" "srvnetwork" {
  server_id  = hcloud_server.gravitsapa.id
  network_id = data.terraform_remote_state.network.outputs.network_ids["Ashburn-DC1-01"].id
}

## Placement Group
resource "hcloud_placement_group" "placement-group" {
  name = "gravitsapa"
  type = "spread"
  labels = {
    "name" : "gravitsapa"
  }
}