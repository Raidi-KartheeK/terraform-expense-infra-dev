locals {
    resource_name = "${var.project_name}-${var.enivronment}"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    private_subnet_ids = split(",", data.aws_ssm_parameter.private_subnet_ids.value)
    https_certificate_arn = data.aws_ssm_parameter.https_certificate_arn.value
}

