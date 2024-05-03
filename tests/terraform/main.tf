terraform {
  required_version = "~> 1.8"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.46.0" # Is at 5.47.0 //28.04.2024
    }

    random = {
      source  = "hashicorp/random"
      version = "3.4.0" # Is at 3.6.1 //28.04.2024
    }

    tfe = {
      source  = "hashicorp/tfe"
      version = "0.54.0" # Is at 0.54.0 //28.04.2024
    }
  }
}

module "uuid" {
  source = "./modules/uuid"
}

output "module_uuid" {
  value = module.uuid
}
