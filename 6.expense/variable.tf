# 1st preference command lin
# 2nd preference .tfvars
# 3rd preference default values

variable "instance_names" {
    type = list 
    default = [ "db", "backend", "frontend" ]
}

variable "image_id" {
    type = string
    default = "ami-090252cbe067a9e58"
    description = "This is RHEL 9 ami id"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
    description = "This is t3 micro free os"  #optional
}

variable "common_tags" {
    default = {
        Environment = "Dev"
        Project     = "Expense"
        terraform   = "true"        
    }
}

variable "ssh_port" {
    default = 22
}
variable "ssh_protocol" {   
    default = "tcp"  
}
variable "cidr_value" {
    type = list(string)  #it is not mondatory but the below [] is mandatory as it is list
    default =  ["0.0.0.0/0"]
}
variable "sg_name" {
    default = "allow_ssh" 
}

variable "sg_description" {
    default = "allow SSH access"
}