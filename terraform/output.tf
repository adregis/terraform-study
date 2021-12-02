output "load_balancer_ip" {
  value = digitalocean_loadbalancer.public.ip

}

output "database_password" {
  value = digitalocean_database_user.username.password
}

output "database_uri" {
  value = digitalocean_database_cluster.postgres
}