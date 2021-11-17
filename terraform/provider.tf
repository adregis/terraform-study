variable "digitalocean_token" {}

provider "digitalocean" {
  token = var.digitalocean_token
}

variable "droplet_image" {
    type = string
    description = "imagem base do projeto"
    default = "ubuntu-20-04"

}
