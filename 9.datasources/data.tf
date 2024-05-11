data "aws_ami" "ami_id-name" {

    most_recent = true
    owners = ["973714476881"]

    filter {
        name   = "name"
        values = ["RHEL-9-DevOps-Practice"]
    }

    filter {
        name   = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
}
data "aws_vpc" "default" {
    default = true
}

data "aws_instance" "aws_instance-name" {
    instance_id = "i-0f6bb7c4687af9b3b"

    filter {
        name   = "tag:env"
        values = ["dev"]
  }
}