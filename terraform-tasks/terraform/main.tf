terraform {
  required_version = ">= 1.5.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

terraform {
  required_version = ">= 1.5.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

module "vpc" {
  source       = "./modules/vpc"
  vpc_name     = var.vpc_name
  subnet_name  = var.subnet_name
  subnet_cidr  = var.subnet_cidr
  region       = var.region
}

module "firewall_https" {
  source   = "./modules/firewall_https"
  vpc_name = var.vpc_name
}

module "vm_private" {
  source       = "./modules/vm_private"
  vm_name      = var.vm_name
  machine_type = var.machine_type
  subnet_id    = module.vpc.subnet_id
  zone         = var.zone
}

module "secure_bucket" {
  source      = "./modules/secure_bucket"
  bucket_name = var.bucket_name
  location    = var.bucket_location
}

module "cloud_sql_private" {
  source        = "./modules/cloud_sql_private"
  instance_name = var.db_instance_name
  db_version    = var.db_version
  tier          = var.db_tier
  network_id    = module.vpc.network_id
  region        = var.region
}

module "artifact_registry" {
  source    = "./modules/artifact_registry"
  repo_name = var.artifact_repo_name
  region    = var.region
}

module "cloud_run" {
  source       = "./modules/cloud_run"
  service_name = var.cloud_run_service_name
  image        = var.container_image
  region       = var.region
}

module "cloud_build" {
  source              = "./modules/cloud_build"
  artifact_repo_name  = var.artifact_repo_name
  cloudbuild_yaml     = "../cloudbuild/cloudbuild.yaml"
}

module "api_gateway" {
  source              = "./modules/api_gateway"
  api_gateway_name    = var.api_gateway_name
  api_config_name     = var.api_config_name
  openapi_spec_path   = var.openapi_spec_path
  region              = var.region
}

module "cloud_scheduler" {
  source        = "./modules/cloud_scheduler"
  scheduler_name = var.scheduler_name
  schedule       = var.schedule
  target_url     = module.cloud_run.service_url
}
