variable "do_token" {
  type        = string
  description = "Token para acesso aos recursos Digital Ocean"
}

variable "droplet_image" {
  type        = string
  description = "imagem base do projeto"
  default     = "ubuntu-18-04-x64"

}

variable "datacenter_region" {
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
  type        = list(string)
  description = "Lista de chaves para acessar droplet"
  default     = ["8b:02:a2:ab:cb:e6:eb:2d:44:41:09:fa:b6:ea:68:3b", "33:f3:1c:0d:cb:2c:ce:2e:f7:0a:7a:bf:f1:3a:83:fe"]
}

variable "droplet_names" {
  type    = list(string)
  default = ["terraform"]
}

variable "private_key_path" {
  type        = string
  description = "Caminho para chave"
  default     = "/home/adriano/.ssh/id_rsa"
}

variable "lb_name" {
  type        = string
  description = "Load balancer"
  default     = "hashicourse"

}

variable "pg_cluster_name" {
  type        = string
  description = "Nome do cluster de PG"
  default     = "postgres-cluster"
}

variable "pg_cluster_version" {
  type        = string
  description = "versão do nosso cluster de pg"
  default     = "12"
}

variable "pg_cluster_size" {
  type        = string
  description = "Tamanho do cluster PG"
  default     = "db-s-1vcpu-1gb"
}

variable "pg_node_count" {
  type        = number
  description = "Numero de nos do nosso cluster"
  default     = 1
}

variable "database_name" {
  type        = string
  description = "Nome do banco de dados"
  default     = "limerick"
}

variable "database_username" {
  type        = string
  description = "Username para o banco de dados"
  default     = "irlanda"
}

variable "firewall_name" {
  type        = string
  description = "Nome do firewall"
  default     = "braum"
}

variable "troubleshooting" {
  type        = bool
  description = "Liberar acessos aos droplets na porta 22"
  default     = false

}

variable "subdomain" {
  type        = string
  description = "Nome do subdominio"
  default       = "terraform"
}

variable "domain" {
  type        = string
  description = "Nome do dominio"
  default       = "adregis2.com"
}

variable "environment_name" {
  type = string
  description = "Nome do ambiente"
  default = "PROD"
}
