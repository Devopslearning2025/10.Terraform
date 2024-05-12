resource "aws_instance" "expense" {
    ami                     = "ami-090252cbe067a9e58"
    vpc_security_group_ids  = ["sg-00c565875394dcd98"]
    instance_type           = "t3.small"
    tags = {
      name = "db"
    }
}