resource "aws_instance" "expense" {
    for_each = var.instance_names   #each.key and each.value
    ami  = data.aws_ami.ami_id-name.id
    vpc_security_group_ids  = ["sg-00c565875394dcd98"]
    instance_type           = each.value
    
    tags =  merge(
        var.common_tags,
        {
            Name = each.key
            Module = each.key
        }
    )
} 