resource "aws_instance" "Expense" {
    ami           = var.image_id
    instance_type = var.instance_name == "db" ? "t2.large" : "t3.micro"  
}