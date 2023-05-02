output "network_id" {
  value = data.terraform_remote_state.network.outputs.network_ids["Falkenstein"].id
}

output "server_ip_gravitsapa" {
  value = hcloud_server.test-server01.ipv4_address
}
