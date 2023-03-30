output "boundary_url" {
  value = hcp_boundary_cluster.boundary_cluster.cluster_url
}

output "boundary_cluster_id" {
  value = hcp_boundary_cluster.boundary_cluster.id
}

output "boundary_username" {
  value = random_string.boundary_username.result
}

output "boundary_password" {
  value     = random_password.boundary_password.result
  sensitive = true
}

output "vault_namespace" {
  value = hcp_vault_cluster.vault_cluster.namespace
}

output "vault_private_endpoint_url" {
  value = hcp_vault_cluster.vault_cluster.vault_private_endpoint_url
}

output "vault_public_endpoint_url" {
  value = hcp_vault_cluster.vault_cluster.vault_public_endpoint_url
}

output "vault_admin_token" {
  value     = hcp_vault_cluster_admin_token.admin_token.token
  sensitive = true
}
