
resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.dolfined_vpc.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch= "true"
  availability_zone = "eu-west-1a"

  tags = {
    Name = "public_subnet"
  }
}