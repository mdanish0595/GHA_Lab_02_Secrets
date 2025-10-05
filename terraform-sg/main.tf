resource "aws_security_group" "web_sg" {
  name        = "web-sg-dan-gitH-02"
  description = "Allow HTTP and SSH inbound traffic"
  vpc_id      = "vpc-07b3e9e8021bfb088"  # Replace with your actual VPC ID

  ingress {
    description      = "Allow SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["1.1.1.1/32"]
  }

  ingress {
    description      = "Allow HTTP"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["1.1.1.1/32"]
  }

  egress {
    description      = "Allow all outbound traffic"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["1.1.1.1/32"]
  }

  tags = {
    Name = "web-sg-dan-02"
  }
}
