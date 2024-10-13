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

variable "bastion_tags" {
    default = {
      component = "bastion"  
    }
}
