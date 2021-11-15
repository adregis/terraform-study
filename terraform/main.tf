terraform {
    reqired_providers {
        digitalocean = {
            source = "digitalocean/digitalocean"
        }
    }
}

resource "digitalocean_droplet" "web" {
  
}