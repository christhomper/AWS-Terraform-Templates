provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "CT_VPC" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "CT_VPC"
  }
}

resource "aws_subnet" "CT_subnet" {
  vpc_id                  = aws_vpc.CT_VPC.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "CT_subnet"
  }
}

resource "aws_internet_gateway" "CT_igw" {
  vpc_id = aws_vpc.CT_VPC.id

  tags = {
    Name = "CT_igw"
  }
}

resource "aws_route_table" "CT_route_table" {
  vpc_id = aws_vpc.CT_VPC.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.CT_igw.id
  }

  tags = {
    Name = "CT_route_table"
  }
}

resource "aws_route_table_association" "CT_association" {
  subnet_id      = aws_subnet.CT_subnet.id
  route_table_id = aws_route_table.CT_route_table.id
}

resource "aws_security_group" "allow_ssh_and_http" {
  name        = "allow_ssh_and_http"
  description = "Allow ssh and http inbound traffic"
  vpc_id      = aws_vpc.CT_VPC.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}



resource "aws_launch_configuration" "CT_Ubuntu" {
  name                 = "CT_Ubuntu"
  image_id             = "ami-0fb3902d309aa0c3e"
  instance_type        = "t2.micro"
  key_name             = "us-east-1"
  security_groups      = [aws_security_group.allow_ssh_and_http.id]
  associate_public_ip_address = true

  root_block_device {
    volume_size = 8
  }
}

resource "aws_autoscaling_group" "CT_Ubuntu" {
  launch_configuration = aws_launch_configuration.CT_Ubuntu.name
  min_size             = 1
  desired_capacity     = 1
  max_size             = 5
  vpc_zone_identifier  = [aws_subnet.CT_subnet.id]

  tag {
    key                 = "Name"
    value               = "CT_Ubuntu"
    propagate_at_launch = true
  }
}
