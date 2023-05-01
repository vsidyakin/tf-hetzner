# Obtain ssh key data
/* data "hcloud_ssh_key" "ssh_key" {
  name = "ssh_key"
} */
data "hcloud_ssh_keys" "all_keys" {
}
data "hcloud_ssh_keys" "keys_by_selector" {
  with_selector = "ssh_keys"
}

## Server types
variable "tier1" {
  default = "tier1"
}
variable "tier1" {
  default = "cx11"
}
variable "tiny" {
  default = "cx11"
}
variable "standard" {
  default = "cpx11"
}
variable "moAdvanced" {
  default = "cpx31"
}
variable "moPro" {
  default = "cpx41"
}
variable "ds1" {
  default = "ccx22"
}
variable "ds2" {
  default = "ccx32"
}
variable "ds3" {
  default = "ccx42"
}

variable "datacenter" {
  type        = string
  default     = "fsn1-dc14"
  description = "Ashburn DC1, Ashburn, VA, us-east, US"
}

variable "datacenter_location_name" {
  type        = string
  default     = "fsn"
  description = "fsn1-dc14"
}
