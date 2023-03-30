variable "boundary_cluster_length" {
  type        = number
  description = "Length of Boundary cluster name."
  default     = 16
}

variable "boundary_username_length" {
  type        = number
  description = "Length of Boundary admin username."
  default     = 16
}

variable "boundary_password_length" {
  type        = number
  description = "Length of Boundary admin password."
  default     = 31
}

variable "hvn_id" {
  type        = string
  description = "The ID of the HashiCorp Virtual Network (HVN)."
}

variable "prefix" {
  type        = string
  description = "Naming prefix."
}

variable "vault_cluster_length" {
  type        = number
  description = "Length of Vault cluster name."
  default     = 16
}

variable "vault_cluster_tier" {
  type        = string
  description = "Tier of the HCP Vault cluster."
  default     = "standard_small"
}
