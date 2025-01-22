variable "project_name" {
  default     = "expense"
}
variable "enivronment"{
    default   = "dev"
}

variable "common_tags"{
    default = {
        project     = "expense"
        terraform   = "true"
        enivronment = "dev"
    }
}

variable "frontend_tags" {
    default = {
      component = "frontend"  
    }
}

variable "zone_name" {
  default = "aws-dev-rk.online"
}