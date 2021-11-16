terraform {
    reqired_providers {
        digitalocean = {
            source = "digitalocean/digitalocean"
        }
    }
}

resource "digitalocean_droplet" "web" {
    image   = "ubuntu-20-04-x64"
    name    = "web-2"
    region  = "nyc1"
    size    = "s-1vcpu-1gb"
}