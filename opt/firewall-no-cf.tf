## Firewall
resource "hcloud_firewall" "no-cf" {
  name = "no-cf"
 rule {
    direction = "in"
    protocol  = "tcp"
    port      = "80"
    source_ips = [
      "0.0.0.0/0",
      "::/0"
    ]
  }
  rule {
    direction = "in"
    protocol  = "tcp"
    port      = "443"
    source_ips = [
      "0.0.0.0/0",
      "::/0"
    ]
  }
  rule {
    direction = "in"
    protocol  = "tcp"
    port      = "22"
    source_ips = [
      "165.22.32.53/32"
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