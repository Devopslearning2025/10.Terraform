# locals {
#   r53_name    = var.instance_names[count.index] == "frontend" ? var.domain_name : "${var.instance_names[count.index]}.${var.domain_name}"
#   r53_records = var.instance_names[count.index] == "frontend" ? [aws_instance.expense[count.index].public_ip]  : [aws_instance.expense[count.index].private_ip]
# }