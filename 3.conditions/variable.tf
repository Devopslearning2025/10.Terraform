variable "image_id" {
    type    = string
    default = "ami-090252cbe067a9e58"  
}
variable "instance_type" {
    type    = string
    default = "t3.micro"
}

variable "instance_name" {
    default = "db"  
}