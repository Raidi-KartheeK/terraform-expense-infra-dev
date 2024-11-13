locals {
    resource_name = "${var.project_name}-${var.enivronment}-backend"
    backend_sg_id = data.aws_ssm_parameter.vpn_sg_id.value
    private_subnet_id = split(",", data.aws_ssm_parameter.privatesubnet_ids.value)[0]
}