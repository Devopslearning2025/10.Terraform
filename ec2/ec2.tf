#resource <resource-type> <resource-name>

resource "aws_instance" "test_instance" {
    ami = "ami-090252cbe067a9e58"
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = "t3.micro"

  tags = {
    Name = "test_instance"
    createdby = "Ramesh vallapu"
  }
}
resource "aws_security_group" "allow_ssh" {
    name = "allow_ssh"
    description = "allowing the ssh access "

    ingress {
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }
        
    egress {
        from_port        = 0 #0 to 0 means, opening all protocol 
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
    }

    tags = {
        Name = "allow_ssh"
        createdBy = "Ramesh Vallapu"
    }
}