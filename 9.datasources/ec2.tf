# resource "aws_instance" "expense" {
#     ami                    =  data.aws_ami.ami_id-name.id
#     vpc_security_group_ids = ["${data.aws_vpc.default.id}"]
#     instance_type          = data.aws_instance.aws_instance-name.instance_type

#     tags = {
#         Name = "data-source"
#     }
# }