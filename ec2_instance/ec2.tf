terraform {
  required_providers{
      aws = {
          source = "hashicorp/aws"
        }
    }
}
provider "aws"{
    region = "ap-southeast-1"
    access_key = ""
    secret_key = ""
}
resource "aws_instance" "example_instance" {
    ami = "ami-072f48a9ed4f1bbda"
    instance_type = "t2.micro"
}
output "punlic_ip" {
    value = aws_instance.example_instance.
}

