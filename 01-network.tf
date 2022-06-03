resource "aws_vpc" "main_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "main_vpc_groupe3"
  }
}

resource "aws_subnet" "SUBNET_PUBLIC" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = "10.0.0.0/24"

  tags = {
    Name = "SUBNET_PUBLIC"
  }
}

resource "aws_subnet" "SUBNET_PRIVATE_A" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = "10.0.1.0/24"

  tags = {
    Name = "SUBNET_PRIVATE_A"
  }
}

resource "aws_subnet" "SUBNET_PRIVATE_B" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = "10.0.2.0/24"

  tags = {
    Name = "SUBNET_PRIVATE_B"
  }
}

resource "aws_subnet" "SUBNET_PRIVATE_C" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = "10.0.3.0/24"

  tags = {
    Name = "SUBNET_PRIVATE_C"
  }
}