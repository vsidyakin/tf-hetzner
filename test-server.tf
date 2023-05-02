##### Create a server
resource "hcloud_server" "test-server01" {
  name        = "test01.vlad.linkpc.net"
  image       = "debian-11"
  server_type = "${var.tiny}"
  backups     = "false"
  placement_group_id = hcloud_placement_group.placement-group.id
  datacenter  = "fsn1-dc14"
  ssh_keys = data.hcloud_ssh_keys.all_keys.ssh_keys.*.name
  user_data = file("cloud01.yaml")
  public_net {
    ipv4_enabled = true
    ipv6_enabled = false
  }
  labels = {
    #"monitoring" = "monitoring_yes",
    "firewall_basic" = "allow_basics"
    #"firewall_ssh" = "private-ds",
    "firewall_base" = "base-monitoring",
    "firewall_ips" = "allow_basics_ips"
  }
}

# Network attachment
resource "hcloud_server_network" "test-server01" {
  server_id  = hcloud_server.test-server01.id
  network_id = data.terraform_remote_state.network.outputs.network_ids["Falkenstein"].id
}

## Placement Group
resource "hcloud_placement_group" "placement-group" {
  name = "test-server01"
  type = "spread"
  labels = {
    "name" : "test-server01"
  }
}
