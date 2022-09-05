//ajksdfa
variable "amazon_linux_arm64_image_id" {
  type = string
  default = "ami-090fa75af13c156b4"
}

variable "min_type" {
  type = string
  default = "t2.micro"
}

variable "default_subnet" {
  type = string
  default = "subnet-0136d595d71110c71"
}

variable "default_tagging" {
  type = string
  default = "IaC EC2"
}

variable "region_" {
  type = string
  default = "us-east-1"
}

variable "vpc_id" {
  type = string
  default = "vpc-02ffed666286ed0c5"
}

variable "http_port" {
  type = string
  default = "80"
}

variable "http_protocol" {
  type = string
  default = "HTTP"
}

variable "default_subnet2" {
  type = string
  default = "subnet-0494b68a0ef498359"
}

