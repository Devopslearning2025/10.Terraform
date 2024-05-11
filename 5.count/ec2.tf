resource "aws_instance" "name" {
    #count                  = 3 #when we know the count of the instances
    count                  = length(var.instance_names)  #when we don't know the count of the instances
    ami                    = var.image_id   
    instance_type          = var.instance_type
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
   
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