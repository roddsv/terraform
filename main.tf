terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws",
        version = "~> 4.16"
        }
    }
    required_version = ">= 1.2.0"
}

provider "aws" {
    region = "us-east-1"
    profile = "bia"
}

resource "aws_security_group" "bia-dev" {
  name        = "bia-dev-tf"
  description = "Regra para a instancia de trabalho bia-dev com Terraform"
  vpc_id      = "vpc-00a4473099d3341f2"

  ingress {
    description = "Liberado 3001 para o mundo"
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "bia-dev" {
ami = "ami-02f3f602d23f1659d"
    instance_type = "t3.micro"
    tags = {
      ambiente="dev"
      Name= var.instance_name
    }
    vpc_security_group_ids = [
        aws_security_group.bia-dev.id
    ]

    root_block_device {
      volume_size = 12
    }
}