# resource "aws_vpc" "ntier_vpc" {
#     cidr_block = "10.10.0.0/16"
#     tags = {
#       Name = "ntier"
#     }

# }

resource "aws_vpc" "ntier_vpc" {
  cidr_block = var.vpc_network_cidr
  tags = {
    Name = local.name # This is from internals.tf
  }

}


resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.ntier_vpc.id
  cidr_block = var.subnet_cidr
  tags = {
    Name = var.subnet_name
  }
  depends_on = [
    aws_vpc.ntier_vpc
  ]
}


# resource "aws_subnet" "subnet1" {
#     vpc_id = aws_vpc.ntier_vpc.id
#     cidr_block = "10.10.0.0/24"

#     tags = {
#       Name = "web"
#     }

# }