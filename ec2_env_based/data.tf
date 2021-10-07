data "aws_ami" "example" {
  
  most_recent      = true
  name_regex       = "^ubuntu/images/hvm-ssd/ubuntu-focal-\\d{3}"
  owners=["099720109477"] 

  filter {
    name   = "name"
    values = ["ami-*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
