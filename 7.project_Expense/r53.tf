resource "aws_route53_record" "expense" {
  count   =  length(var.instance_names)
  zone_id = var.zone_id
  name   = var.instance_names[count.index] == "frontend" ? var.domain_name : "${var.instance_names[count.index]}.${var.domain_name}"
  #name    = local.r53_name
  type    = "A"
  ttl     = 1
  #records = [aws_eip.lb.public_ip]
  records = var.instance_names[count.index] == "frontend" ? [aws_instance.expense[count.index].public_ip]  : [aws_instance.expense[count.index].private_ip]
  #records  = local.r53_records
  allow_overwrite = true #if records already exists then it overwrite the values
}