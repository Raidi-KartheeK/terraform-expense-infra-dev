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

variable "app_alb_tags"{
    default = {
       component =  "app_alb"
    }
}

variable "zone_name" {
    default = "karthikraidi.online" 
    
    
}

