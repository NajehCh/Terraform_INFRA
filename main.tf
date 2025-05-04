terraform {
  backend "s3" {
    bucket = "bucke-tfstate"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.AWS_REGION
}

module "vpc" {
  source = "./modules/vpc"
}

module "network" {
  source   = "./modules/network"
  vpc_id   = module.vpc.vpc_id
}

module "compute" {
  source              = "./modules/compute"
  subnet_id           = module.network.subnet_id
  security_group_id   = module.network.security_group_id
  ami_id              = data.aws_ami.ubuntu.id
  instance_type       = var.instance_type
  key_name            = var.key_name
  instance_name       = var.instance_name
}
module "nodejs_instance" {
  source            = "./modules/compute"
  subnet_id         = module.network.subnet_id
  security_group_id = module.network.security_group_id
  ami_id            = data.aws_ami.ubuntu.id
  instance_type     = var.instance_type
  key_name          = var.key_name
  instance_name     = "NodeJS-Instance"
}

module "storage" {
  source      = "./modules/storage"
  instance_id = module.compute.instance_id
}

data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
