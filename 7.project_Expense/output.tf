output "instance_info" {
    value = aws_instance.expense
    #value = [aws_instance.expense[count.index].public_ip]
    #value = var.instance_names == "frontend" ? [aws_instance.expense[count.index].public_ip]  : [aws_instance.expense[count.index].private_ip]
}