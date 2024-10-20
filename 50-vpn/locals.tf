locals {
    resource_name = "${var.project_name}-${var.enivronment}"
    vpc_sg_id = data.aws_ssm_parameter.vpc_sg_id.value
    public_subnet_ids = split(",", data.aws_ssm_parameter.public_subnet_ids.value)
}

