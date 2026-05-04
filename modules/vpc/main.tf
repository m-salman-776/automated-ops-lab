resource "aws_vpc" "this" {
    cidr_block = var.cidr_block
    tags = {
        Name = "${var.env_name}-VPC"
    }
}

resource "aws_subnet" "this" {
    vpc_id            = aws_vpc.this.id
    cidr_block        = var.public_subnet_cidr
    map_public_ip_on_launch = true

    tags = {
        Name = "${var.env_name}-Public-Subnet"
    }
}

output "name" {
  value = aws_vpc.this.id
}

# dummy commit