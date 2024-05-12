resource "aws_route53_record" "expense" {
  for_each  = aws_instance.expense
  zone_id   = var.my_zone
  name      = each.key == "frontend" ? var.my_domain : "${each.key}.${var.my_domain}"
  #name    = local.r53_name
  type    = "A"
  ttl     = 1
  #records = [aws_eip.lb.public_ip]
  records = each.value == "frontend" ? [each.value.public_ip]  : [each.value.private_ip]
  
  allow_overwrite = true #if records already exists then it overwrite the values
}