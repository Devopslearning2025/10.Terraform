# 1st preference command lin
# 2nd preference .tfvars
# 3rd preference default values

variable "image_id" {
    type = string
    default = "ami-090252cbe067a9e58"
    description = "RHEL AMI ID"  
}

variable "instance_type" {
    type = string
    default = "t3.micro"
    description = "RHEL Type"  
}

variable "tags" {
    default = {
        Project     = "Expense"
        Environment = "Dev"
        Module      = "DB"        
        Name        = "DB"
    }
}

variable "sg_name" {
    default = "allow_ssh"
}

variable "sg_description" {
    default = "Allowing ssh access"
}

variable "ssh_port" {
    default = "22"  
}
variable "ssh_protocol" {
    default = "tcp"  
}

variable "allowed_cidr" {
    type = list
    default = ["0.0.0.0/0"] 
}