resource "aws_security_group" "allow_ports" {
    name = "allowed_ports"
    description = "allowing the port 22, 80, 8080, 3306 access"

    #terraform block
    dynamic "ingress" {
        for_each = var.inbound-port-numbers
        content { 
        from_port   = ingress.value["port"]
        to_port     = ingress.value["port"]
        protocol    = ingress.value["protocol"]
        cidr_blocks = ingress.value["alowed_cider"]
    }
    }
    
    egress {
        from_port        = 0 # from 0 to 0 means opening for all protocols
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
    }
    tags = {
      Name = "DB"
      createdby = "Ramesh"
    }
}