## Firewall
resource "hcloud_firewall" "cf" {
  name = "cf"
  rule {
    direction = "in"
    protocol  = "tcp"
    port      = "80"
    source_ips = [
      "103.21.244.0/22",
      "103.22.200.0/22",
      "103.31.4.0/22",
      "104.16.0.0/13",
      "104.24.0.0/14",
      "131.0.72.0/22",
      "141.101.64.0/18",
      "162.158.0.0/15",
      "172.64.0.0/13",
      "173.245.48.0/20",
      "188.114.96.0/20",
      "190.93.240.0/20",
      "197.234.240.0/22",
      "198.41.128.0/17",
      "2400:cb00::/32",
      "2405:8100::/32",
      "2405:b500::/32",
      "2606:4700::/32",
      "2803:f800::/32",
      "2a06:98c0::/29",
      "2c0f:f248::/32"
    ]
  }
  rule {
    direction = "in"
    protocol  = "tcp"
    port      = "443"
    source_ips = [
      "103.21.244.0/22",
      "103.22.200.0/22",
      "103.31.4.0/22",
      "104.16.0.0/13",
      "104.24.0.0/14",
      "108.162.192.0/18",
      "131.0.72.0/22",
      "141.101.64.0/18",
      "162.158.0.0/15",
      "172.64.0.0/13",
      "173.245.48.0/20",
      "188.114.96.0/20",
      "190.93.240.0/20",
      "197.234.240.0/22",
      "198.41.128.0/17",
      "2400:cb00::/32",
      "2405:8100::/32",
      "2405:b500::/32",
      "2606:4700::/32",
      "2803:f800::/32",
      "2a06:98c0::/29",
      "2c0f:f248::/32"
    ]
  }
  rule {
    direction = "in"
    protocol  = "tcp"
    port      = "22"
    source_ips = [
      "165.22.32.53/32",
      "138.197.67.132/32",
      "167.99.22.171/32"
    ]
  }
  rule {
    direction = "in"
    protocol  = "tcp"
    port      = "2222"
    source_ips = [
      "0.0.0.0/0",
      "::/0"
    ]
  }
  rule {
    direction = "in"
    protocol  = "tcp"
    port      = "2376"
    source_ips = [
      "104.131.41.57/32",
      "138.197.67.132/32",
      "167.99.22.171/32"
    ]
  }
  rule {
    direction = "in"
    protocol  = "tcp"
    port      = "3100"
    source_ips = [
      "104.131.1.92/32", # mon-prometheus.digitalsilk.com
      "10.0.0.0/8"       # Ashburn-DC1-01
    ]
  }
  rule {
    direction = "in"
    protocol  = "tcp"
    port      = "9080"
    source_ips = [
      "104.131.1.92/32", # mon-prometheus.digitalsilk.com
      "10.0.0.0/8"       # Ashburn-DC1-01
    ]
  }
  rule {
    direction = "in"
    protocol  = "tcp"
    port      = "9090"
    source_ips = [
      "104.131.1.92/32", # mon-prometheus.digitalsilk.com
      "10.0.0.0/8"       # Ashburn-DC1-01
    ]
  }
  rule {
    direction = "in"
    protocol  = "tcp"
    port      = "9100"
    source_ips = [
      "104.131.1.92/32", # mon-prometheus.digitalsilk.com
      "10.0.0.0/8"       # Ashburn-DC1-01
    ]
  }
  rule {
    direction = "in"
    protocol  = "tcp"
    port      = "9104"
    source_ips = [
      "104.131.1.92/32", # mon-prometheus.digitalsilk.com
      "10.0.0.0/8"       # Ashburn-DC1-01
    ]
  }
  rule {
    direction = "in"
    protocol  = "tcp"
    port      = "9115"
    source_ips = [
      "104.131.1.92/32", # mon-prometheus.digitalsilk.com
      "10.0.0.0/8"       # Ashburn-DC1-01
    ]
  }
  rule {
    direction = "in"
    protocol  = "tcp"
    port      = "9122"
    source_ips = [
      "104.131.1.92/32", # mon-prometheus.digitalsilk.com
      "10.0.0.0/8"       # Ashburn-DC1-01
    ]
  }
    rule {
    direction = "in"
    protocol  = "tcp"
    port      = "9122"
    source_ips = [
      "104.131.1.92/32", # mon-prometheus.digitalsilk.com
      "10.0.0.0/8"       # Ashburn-DC1-01
    ]
  }

  labels = {
    "tag" : "brand"
  }
}
