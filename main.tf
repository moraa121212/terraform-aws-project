module "vpc" {
  source = "./modules/vpc"
}
module "subnet" {
  source  = "./modules/subnet"
  vpc_id  = module.vpc.vpc_id
}
module "SG" {
  source = "./modules/SG"
  vpc_id = module.vpc.vpc_id
}
module "IGW" {
  source  = "./modules/IGW"
  vpc_id  = module.vpc.vpc_id
}
module "route_table" {
  source   = "./modules/route-table"
  gateway  = module.IGW.iti_IGW_id 
  subnet_id = module.subnet.subnet_id
  vpc_id   = module.vpc.vpc_id
  mora = module.vpc.default_route_table_id
}
module "ec2" {
  source     = "./modules/ec2"
  ami        = "ami-052efd3df9dad4825"   
  subnet_id  = module.subnet.subnet_id
  secgrp = module.SG.secgrp
}
