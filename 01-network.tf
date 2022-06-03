resource "aws_vpc" "main_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    name = "main_vpc_groupe3"
  }
}

resource "aws_subnet" "subnet_public" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = "10.0.0.0/24"

  tags = {
    name = "subnet_public"
  }
}

resource "aws_subnet" "subnet_private_a" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = "10.0.1.0/24"

  tags = {
    name = "subnet_private_a"
  }
}

resource "aws_subnet" "subnet_private_b" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = "10.0.2.0/24"

  tags = {
    name = "subnet_private_b"
  }
}

resource "aws_subnet" "subnet_private_c" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = "10.0.3.0/24"

  tags = {
    name = "subnet_private_c"
  }
}