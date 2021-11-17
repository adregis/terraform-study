variable "do_token" {
  type        = string
  description = "Token para acesso aos recursos Digital Ocean"
}

variable "droplet_image" {
  type        = string
  description = "imagem base do projeto"
  default     = "ubuntu-18-04-x64"

}

variable "droplet_region" {
  type        = string
  description = "Regiao onde os droplets serão criados"
  default     = "ams3"
}

variable "droplet_size" {
  type        = string
  description = "Tamanho do droplet"
  default     = "s-1vcpu-1gb"
}

