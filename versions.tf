terraform {
  backend "gcs" {
    bucket = "terraform-sandbox-cramirezv"
    prefix = "terraform/atlantis/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.41.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}
