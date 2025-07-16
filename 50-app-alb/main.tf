module "app_alb" {
  source = "terraform-aws-modules/alb/aws"

  internal = true
  name    = "${local.resource_name}-app-alb"#expense-dev-app-alb.online
  vpc_id  = local.vpc_id
  subnets = local.private_subnet_ids
  security_groups = [data.aws_ssm_parameter.app_alb_sg_id.value]
  create_security_group = false # 
  enable_deletion_protection = false
  
  tags = merge(
    var.common_tags,
    var.app_alb_tags
  )
}

resource "aws_lb_listener" "http" {
  load_balancer_arn = module.app_alb.arn #amazon resource name
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type = "fixed-response" # This will give fixed responce.

    fixed_response {
      content_type = "text/html"
      message_body = "<h1>Hello, i am from application ALB</h1>"
      status_code  = "200"
    }
  }
}

#for Route53 (dns name)

module "records" {
  source  = "terraform-aws-modules/route53/aws//modules/records"

  zone_name = var.zone_name #aws-dev-rk.online
  records = [
    {
      name    = "*.app-${var.enivronment}" # *.app-dev
      type    = "A"
      alias   = {
        name    = module.app_alb.dns_name
        zone_id = module.app_alb.zone_id # This belongs ALB internal hosted zone, not ours
      }
      allow_overwrite = true
    }
  ]
}