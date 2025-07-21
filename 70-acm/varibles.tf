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



variable "zone_name" {
  default = "karthikraidi.online"
}

variable "zone_id" {
    default = "Z02637673132XKMIIEO7B"
}