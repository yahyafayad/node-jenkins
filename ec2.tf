resource "aws_instance" "task2_public_instance" {
  ami   = "ami-0776c814353b4814d"
  instance_type = "t3.micro"
  availability_zone = "eu-west-1a"
  security_groups = [aws_security_group.task2-sg.id]
  subnet_id  =  aws_subnet.public.id
  key_name = "fayad"

 tags = {
   Name = "task2_public_instance"
  }
}
