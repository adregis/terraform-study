terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_droplet" "web" {
  image    = var.droplet_image
  name     = "web"
  region   = var.droplet_region
  size     = var.droplet_size
  ssh_keys = ["8b:02:a2:ab:cb:e6:eb:2d:44:41:09:fa:b6:ea:68:3b", "33:f3:1c:0d:cb:2c:ce:2e:f7:0a:7a:bf:f1:3a:83:fe"]
  lifecycle {
    create_before_destroy = true
    ignore_changes = [
      ssh_keys,
    ]
  }
}
output "ip_do_droplet" {
  value = digitalocean_droplet.web.ipv4_address
}
 