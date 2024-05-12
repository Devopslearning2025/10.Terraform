output "name_of_ami" {
    value = data.aws_ami.data_ami_name.id
}
output "vpc_info" {
    value = data.aws_vpc.vpc_name.id
}