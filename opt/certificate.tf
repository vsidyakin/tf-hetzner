resource "hcloud_managed_certificate" "managed_cert" {
  name         = "managed_cert"
  domain_names = ["*.example.com", "example.com"]
  labels = {
    tag = "terraform-testing"
    label_2 = "created in terraform"
  }
}