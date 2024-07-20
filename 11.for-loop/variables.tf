variable "instance_names" {
    type = map
    default = {
        db       = "t3.medium"
        backend  = "t2.micro"
        frontend = "t3.small"
    }
}

variable "common_tags" {
    type = map
    default = {
        Environment = "Dev"
        Project     = "Expense"
        terraform   = "true"        
    }
}

variable "my_zone" {
    default = "Z01770472ZXHIS1GBI6I5"
}

variable "my_domain" {
    default = "devopslearning2025.online"  
}