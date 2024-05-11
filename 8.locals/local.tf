locals {
  ami = "ami-090252cbe067a9e58"
  #instance_type = "t2.micro"
  instance_type = var.instance_name == "db" ? "t2.micro" : "t2.medium"
  sg_id = "sg-00c565875394dcd98"
  tags =  {
    Name = "test_instance"
    createdby = "Ramesh vallapu"
  }
}