resource "aws_vpc" "dolfined_vpc" {
  cidr_block       = "10.0.0.0/16"
  tags = {
    Name = "task2_vpc"
  }
}