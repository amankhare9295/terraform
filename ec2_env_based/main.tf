terraform {
   required_providers{
     aws= {
       source="hashicorp/aws"
       version="~> 3.56"
       }
  }

  backend "s3" {
  bucket="bucky9295"  
  key="ec2_env_based"
  region="ap-south-1"
}
}

provider "aws"{
region="ap-south-1"
}

resource "aws_instance" "ec2" {
ami=data.aws_ami.example.id
instance_type=lookup(var.typ, var.env)
tags = {
Name = "webserver"
}
}

