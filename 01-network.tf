resource "aws_vpc" "main_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "main-vpc-groupe3"
  }
}

resource "aws_subnet" "SUBNET-PUBLIC" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = "10.0.0.0/24"

  tags = {
    Name = "SUBNET-PUBLIC"
  }
}

resource "aws_subnet" "SUBNET-PRIVATE-A" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = "10.0.1.0/24"

  tags = {
    Name = "SUBNET-PRIVATE-A"
  }
}

resource "aws_subnet" "SUBNET-PRIVATE-B" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = "10.0.2.0/24"

  tags = {
    Name = "SUBNET-PRIVATE-B"
  }
}

resource "aws_subnet" "SUBNET-PRIVATE-C" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = "10.0.3.0/24"

  tags = {
    Name = "SUBNET-PRIVATE-C"
  }
}