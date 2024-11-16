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

variable "web_alb_tags"{
    default = {
       component =  "web_alb"
    }
}

variable "zone_name" {
    default = "aws-dev-rk.online" 
    
    
}

