## Uncomment to create Volume if you need more than one and put it in root folder
#resource "hcloud_volume" "storage" {
#  name       = "test-volume"
#  size       = 10
#  server_id  = "${hcloud_server.terraform-testing.id}"
#  automount  = true
#  format     = "ext4"
#  labels = {
#    "tag" : "terraform-testing"
#  }
#}