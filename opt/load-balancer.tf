## Load Balancer
resource "hcloud_load_balancer" "load_balancer" {
  name               = "test-load-balancer"
  load_balancer_type = "lb11"
  location           = "ash"
}
resource "hcloud_load_balancer_target" "load_balancer_target" {
  type             = "server"
  load_balancer_id = hcloud_load_balancer.load_balancer.id
  server_id        = hcloud_server.terraform-testing.id
}
resource "hcloud_load_balancer_service" "load_balancer_service" {
    load_balancer_id = hcloud_load_balancer.load_balancer.id
    protocol         = "http"
}