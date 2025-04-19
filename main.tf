module "vpc" {
  source   = "./modules/vpc"
  vpc_name = "iTi_VPC"
  vpc_cidr = "10.0.0.0/16"
}

###############################################################################################


module "subnet" {
  source      = "./modules/subnet"
  vpc_id      = module.vpc.vpc_id
  subnet_name = "iTi_subnet"
  subnet_cidr = "10.0.1.0/24"
  subnet_az   = "us-east-1a"
}

###############################################################################################

module "SG" {
  source  = "./modules/SG"
  vpc_id  = module.vpc.vpc_id
  sg_name = "iTi_SG"
}

###############################################################################################


module "IGW" {
  source   = "./modules/IGW"
  vpc_id   = module.vpc.vpc_id
  igw_name = "iTi_IGW"
}

###############################################################################################


module "route_table" {
  source           = "./modules/route-table"
  gateway          = module.IGW.iti_IGW_id
  subnet_id        = module.subnet.subnet_id
  vpc_id           = module.vpc.vpc_id
  mora             = module.vpc.default_route_table_id
  route_table_name = "iti-default-route-public"
}

###############################################################################################


module "ec2" {
  source              = "./modules/ec2"
  ami                 = "ami-0e449927258d45bc4"
  instance-type       = "t2.micro"
  subnet_id           = module.subnet.subnet_id
  secgrp              = module.SG.secgrp
  ec_name             = "iTi_ec2"
  initializing_script = "user_data/script.sh"
}
