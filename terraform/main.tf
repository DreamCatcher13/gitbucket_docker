module "disk"{
  source = "./modules/disk"

  zone = var.zone
}

module "vpc" {
  source = "./modules/vpc"

  region = var.region
}

module "cluster" {
  source = "./modules/cluster"

  zone   = var.zone
  net    = module.vpc.net_name
  subnet = module.vpc.subnet_name
}
