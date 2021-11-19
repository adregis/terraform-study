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

variable "droplet_ssh_keys" {
  type        =  list(string)
  description = "Lista de chaves para acessar droplet"
  default     = ["8b:02:a2:ab:cb:e6:eb:2d:44:41:09:fa:b6:ea:68:3b", "33:f3:1c:0d:cb:2c:ce:2e:f7:0a:7a:bf:f1:3a:83:fe"] 
}

variable "droplet_names" {
  type        = list(string)
  default     = ["brasil"]
}