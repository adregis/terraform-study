variable "do_token" {
  type  = string  
  description = "Token para acesso aos recursos Digital Ocean"
}

variable "droplet_image" {
    type = string
    description = "imagem base do projeto"
    default = "ubuntu-20-04"

}
