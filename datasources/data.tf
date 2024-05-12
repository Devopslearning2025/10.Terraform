data "aws_ami" "data_ami_name" {
    most_recent = true
    owners      = ["973714476881"]

  filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"]
  }
#   filter {
#     name = "root-device-type"
#     values = ["EBS"]
#   }
    filter {
      name = "virtualization-type"
      values = ["hvm"]
    }
}

data "aws_vpc" "vpc_name" {
    default = true  
}