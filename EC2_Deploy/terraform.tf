terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.1.0"
    }
    // install tls provider for generating the SSH keys
    tls = {
      source  = "hashicorp/tls"
      version = "3.1.0"
    }
  }
}
