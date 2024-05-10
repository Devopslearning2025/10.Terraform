#resource <resource-type>     <resource-name>
resource "aws_instance" "Test_Instance" {
    ami                     = var.image_id
    vpc_security_group_ids  = [aws_security_group.allow_ssh.id]
    instance_type           = var.instance_type

    tags = var.tags
} 

resource "aws_security_group" "allow_ssh" {
    name        = var.sg_name
    description = var.sg_description

 #This is block in terraform
    ingress {
        from_port        = var.ssh_port
        to_port          = var.ssh_port
        protocol         = var.ssh_protocol
        cidr_blocks      = var.cidr_value
    }
    egress {
        from_port        = 0 # from 0 to 0 means opening for all protocols
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = var.cidr_value
    }

    tags = {
        name      = "Allow_ssh"
        createdby = "Ramesh Vallapu"
    }    
}
  