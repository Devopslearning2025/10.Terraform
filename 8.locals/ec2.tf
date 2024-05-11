resource "aws_instance" "test_instance" {
    ami = local.ami
    vpc_security_group_ids = [local.sg_id]
    instance_type = local.instance_type

  tags = local.tags
}