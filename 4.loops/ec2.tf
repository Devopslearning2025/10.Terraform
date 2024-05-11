#resource <resource-type>     <resource-name>
resource "aws_instance" "Test_Instance" {
    #count = 3
    count = length(var.instance_names)
    ami                     = "ami-090252cbe067a9e58"
    vpc_security_group_ids  = [aws_security_group.allow_ssh.id]
    instance_type           = "t2.mirco"

    tags = {
      Name = var.instance_names[count.index]
    }
}

resource "aws_security_group" "allow_ssh" {
    name        = "allow_ssh"
    description = "allow_ssh"

 #This is block in terraform
    ingress {
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }
    egress {
        from_port        = 0 # from 0 to 0 means opening for all protocols
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
    }
}
  