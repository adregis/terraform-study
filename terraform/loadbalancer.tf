resource "digitalocean_loadbalancer" "public" {
  name   = var.lb_name
  region = var.datacenter_region

  forwarding_rule {
    entry_port     = 80
    entry_protocol = "http"

    target_port     = 80
    target_protocol = "http"
  }

  healthcheck {
    port     = 22
    protocol = "tcp"
  }

  droplet_ids = digitalocean_droplet.web[*].id
}

output "ip_do_droplet" {
  value = digitalocean_droplet.web[*].ipv4_address
}

resource "digitalocean_domain" "subdomain" {
  name       = "${var.subdomain}.${var.domain}"
  ip_address = digitalocean_loadbalancer.public.ip
}


