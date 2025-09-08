terraform {
  backend "gcs" {
    bucket = " my-first-project-config-bucket"
    prefix = "terraform/state/dev"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.60"
    }
  }
}