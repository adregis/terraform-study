terraform {
    required_providers {
        digitalocean = {
            source = "digitalocean/digitalocean"
        }
    }
}

resource "digitalocean_droplet" "web" {
    image   = "ubuntu-20-04-x64"
    name    = "web-5"
    region  = "nyc1"
    size    = "s-1vcpu-1gb"
}

output "ip_do_droplet" {
    value   = digitalocean_droplet.web.ipv4_address
}
 