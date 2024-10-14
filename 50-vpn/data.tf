data "aws_ssm_parameter" "vpn_sg_id" {
  name = "/${var.project_name}/${var.enivronment}/vpn_sg_id"
}

data "aws_ssm_parameter" "public_subnet_ids" {
    #/expense/dev/public_subnet_ids
  name = "/${var.project_name}/${var.enivronment}/public_subnet_ids"
}

data "aws_ami" "joindevops" {
  most_recent = true
    owners = ["973714476881"]

  filter {
    name   = "name"
    values = ["OpenVPN Access Server Community Image-fe8020db-*"]
  }

  filter {
    name   = "Root device type"
    values = ["ebs"]
  }
  
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
