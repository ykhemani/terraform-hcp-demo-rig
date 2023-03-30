# HVN
data "hcp_hvn" "hvn" {
  hvn_id = var.hvn_id
}

# Vault
resource "random_string" "vault_cluster" {
  length  = var.vault_cluster_length
  special = false
}

resource "hcp_vault_cluster" "vault_cluster" {
  cluster_id = random_string.vault_cluster.result
  hvn_id     = data.hcp_hvn.hvn.hvn_id
  tier       = var.vault_cluster_tier
  lifecycle {
    prevent_destroy = true
  }
}

resource "hcp_vault_cluster_admin_token" "admin_token" {
  cluster_id = hcp_vault_cluster.vault_cluster.cluster_id
}

# Boundary
resource "random_string" "boundary_cluster" {
  length  = var.boundary_cluster_length
  special = false
}

resource "random_string" "boundary_username" {
  length  = var.boundary_username_length
  special = false
  upper   = false
}

resource "random_password" "boundary_password" {
  length = var.boundary_password_length
}

resource "hcp_boundary_cluster" "boundary_cluster" {
  cluster_id = "${var.prefix}-${random_string.boundary_cluster.result}"
  username   = random_string.boundary_username.result
  password   = random_password.boundary_password.result
}
