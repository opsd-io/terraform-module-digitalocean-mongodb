variable "cluster_name" {
  description = "The name of the database cluster."
  type        = string
  nullable    = false
}

variable "node_count" {
  description = "Number of mongodb nodes that will be created."
  type        = number
  default     = 1
}

variable "node_size" {
  description = "The mongodb node instance size."
  type        = string
  default     = "db-s-1vcpu-1gb"
}

variable "mongodb_version" {
  description = "Engine version used by the cluster."
  type        = number
  default     = 7
}

variable "region" {
  description = "DigitalOcean region where the cluster will reside."
  type        = string
  nullable    = false
}

variable "common_tags" {
  description = "A list of tag names to be applied to the database cluster."
  type        = set(string)
  default     = []
}

variable "firewall_rules" {
  description = "List of trusted sources associated with the cluster."
  type        = set(string)
  default     = []
}

variable "database_users" {
  description = "List of users."
  type        = set(string)
  default     = []
}
