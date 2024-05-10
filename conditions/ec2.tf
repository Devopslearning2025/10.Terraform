resource "image_id" "name" {
    ami             = var.image_id
    instance_type   = var.instance_name == "db" ? "t3.micro" : "t3.meduim"
}