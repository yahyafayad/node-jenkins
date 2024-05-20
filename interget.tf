resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.dolfined_vpc.id

  tags = {
    Name = "task2_internet_gateway"
  }
}