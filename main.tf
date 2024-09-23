provider "google" {
  project = var.project_id
  region  = var.region
}

module "vpc" {
  source = "./vpc"
}

module "firewall" {
  source = "./firewall"
}

module "instances" {
  source = "./instance"
}

module "loadbalancer" {
  source = "./loadbalancer"
}

module "storage" {
  source = "./storage"
}

module "sql" {
  source = "./sql"
}
