resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "dolapo-vpc"
  }
}

resource "aws_subnet" "private-AZ1a" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "dolapo-private-subnet-AZ1a"
  }
}

resource "aws_subnet" "public-AZ1a" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "dolapo-public-subnet-AZ1a"
  }
}

resource "aws_subnet" "private-AZ1b" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.3.0/24"

  tags = {
    Name = "dolapo-private-subnet-AZ1b"
  }
}

resource "aws_subnet" "public-AZ1b" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.4.0/24"

  tags = {
    Name = "dolapo-public-subnet-AZ1b"
  }
}
