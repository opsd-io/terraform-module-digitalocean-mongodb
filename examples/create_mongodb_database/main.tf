module "example" {
  source = "github.com/opsd-io/terraform-module-digitalocean-mongodb?ref=1-add-mongo-do-tf-module"

  cluster_name    = "opsd-mongodb-main-stg"
  mongodb_version = "7"
  node_size       = "db-s-1vcpu-1gb"
  region          = "nyc1"
  node_count      = 1
  common_tags     = ["production"]
  database_users  = ["Admin", "Mark", "Robert"]
  firewall_rules  = ["192.168.0.1", "192.168.0.2", "192.168.0.8"]
}
