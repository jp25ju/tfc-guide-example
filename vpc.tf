
resource "aws_vpc" "simple_vpc_20220623" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "simple_vpc"
  }
}

resource "aws_subnet" "public_subnet1_20220623" {
  vpc_id = aws_vpc.simple_vpc.id
  cidr_block = "10.0.0.0/24"

  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "public_subnet1"
  }
}

resource "aws_subnet" "public_subnet2_20220623" {
  vpc_id = aws_vpc.simple_vpc.id
  cidr_block = "10.0.1.0/24"

  availability_zone = "ap-northeast-2b"

  tags = {
    Name = "public_subnet2"
  }
}