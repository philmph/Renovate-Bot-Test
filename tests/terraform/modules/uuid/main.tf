terraform {
  required_version = "~> 1.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.32.0, < 6.0.0" # Is at 5.47.0 //28.04.2024
    }

    random = {
      source  = "hashicorp/random"
      version = ">= 3.1.0, < 4.0.0" # Is at 3.6.1 //28.04.2024
    }

    tfe = {
      source  = "hashicorp/tfe"
      version = ">= 0.37.0, < 1.0.0" # Is at 0.54.0 //28.04.2024
    }
  }
}

resource "random_uuid" "this" {}

output "uuid" {
  value = random_uuid.this.result
}
