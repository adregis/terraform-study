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
  name     = var.droplet_names[count.index]
  region   = var.droplet_region
  size     = var.droplet_size
  ssh_keys = var.droplet_ssh_keys
  lifecycle {
    create_before_destroy = true
    ignore_changes = [
      ssh_keys,
    ]
  }
  count = 2
}

output "ip_do_droplet" {
  value = digitalocean_droplet.web[*].ipv4_address
}
 