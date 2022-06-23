
resource "aws_vpc" "simple_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "simple_vpc"
  }
}

resource "aws_subnet" "public_subnet1" {
  vpc_id = aws_vpc.simple_vpc.id
  cidr_block = "10.0.0.0/24"

  availability_zone = "us-west-1a"

  tags = {
    Name = "public_subnet1"
  }
}

resource "aws_subnet" "public_subnet2" {
  vpc_id = aws_vpc.simple_vpc.id
  cidr_block = "10.0.1.0/24"

  availability_zone = "us-west-1c"

  tags = {
    Name = "public_subnet2"
  }
}
