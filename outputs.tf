output "network_id" {
  value = data.terraform_remote_state.network.outputs.network_ids["Falkenstein"].id
}

output "server_ip_yourservername" {
  value = hcloud_server.gravitsapa.ipv4_address
}
