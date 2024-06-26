# Creating an EC2 Instance
resource "aws_instance" "demo" {
    ami = data.aws_ami.demo.id
    instance_type = var.instance_type
    key_name = var.key_type

    tags = {
      name = "demo"
    }
  
}

data "aws_ami" "demo" {
  most_recent = true
  filter {
    name = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-20240423"]
  }
}
