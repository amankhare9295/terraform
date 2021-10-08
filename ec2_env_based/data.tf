data "aws_ami" "example" {
  
  most_recent      = true
  name_regex       = "^ubuntu/images/hvm-ssd/ubuntu-focal*"
  owners=["099720109477"] 

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-*"]
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
