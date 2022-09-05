provider "aws" {
  region = var.region_
  access_key = var.AWS_SECRET_ACCESS_KEY
  secret_key = var.AWS_SECRET_ACCESS_KEY_ID
}

resource "aws_instance" "web" {
  ami = var.amazon_linux_arm64_image_id
  instance_type = var.min_type
  key_name = var.key_name_aws_gorkem
  vpc_security_group_ids = [aws_security_group.main.id]
  subnet_id = var.default_subnet

  tags = {
    Name = "Default"
  }
 
}

resource "aws_security_group" "main" {
  egress = [
    {
      cidr_blocks      = ["0.0.0.0/0", ]
      description      = ""
      from_port        = 0
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "-1"
      security_groups  = []
      self             = false
      to_port          = 0
    }
  ]
  ingress = [
    {
      cidr_blocks      = [var.my_ip]
      description      = ""
      from_port        = 22
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "tcp"
      security_groups  = []
      self             = false
      to_port          = 22
    },
        {
      cidr_blocks      = [var.my_ip]
      description      = ""
      from_port        = 80
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "tcp"
      security_groups  = []
      self             = false
      to_port          = 80
    },
            {
      cidr_blocks      = [var.my_ip]
      description      = ""
      from_port        = 0
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "-1"
      security_groups  = []
      self             = false
      to_port          = 0
    }
  ]
}
/*
resource "aws_lb_target_group" "alb_target_group" {
  name = "albtargetgroup"
  port = var.http_port
  protocol = var.http_protocol
  vpc_id = var.vpc_id
}

resource "aws_lb_listener" "alb_listener" {
  load_balancer_arn = aws_lb.alb.arn
  port = var.http_port
  protocol = var.http_protocol
  
  default_action {
    type = "forward"
    target_group_arn = aws_lb_target_group.alb_target_group.arn
  }
}

resource "aws_lb" "alb" {
  name = "alb"
  internal = false
  load_balancer_type = "application"
  security_groups = [aws_security_group.main.id]
  subnets = [ var.default_subnet, var.default_subnet2 ]
}

resource "aws_lb_target_group_attachment" "attachment" {
  target_group_arn = aws_lb_target_group.alb_target_group.arn
  target_id = aws_instance.web.id
  port = var.http_port
}
*/

