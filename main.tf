provider "aws" {
  region                  = var.region
  shared_credentials_file = "~/.aws/credentials"
}

data "template_file" "name" {
  template = "${file("${path.module}/scripts/setup/sh")}"

  vars = {
    var = value
  }
}

module "tadas_instance" {
  source    = "./EC2"
  subnet_id = module.tadas_vpc.subnet_a_id
  vpc_security_group_ids = module.tadas_SG.vpc_security_group_ids
  ssh = module.tadas_SG.ssh_sg
  user_data = data.template_file.init.rendered
}
module "tadas_vpc" {
  source = "./VPC"
}
module "tadas_SG" {
  source = "./SG"
  vpc_id = module.tadas_vpc.vpc_id
}

