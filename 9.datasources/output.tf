output "ami-info" {
    #value = data.aws_ami.ami_id-name  #to get the aws_ami full info as per data source
    value = data.aws_ami.ami_id-name.id # to get the ami id as per data source
}
output "default_vpc" {
    #value = data.aws_vpc.default  #to get everything about VPC
    value = data.aws_vpc.default.id  #to get vpc id
}
output "instance_type" {
    value = data.aws_instance.aws_instance-name.instance_type
}