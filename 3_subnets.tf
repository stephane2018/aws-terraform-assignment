resource "aws_subnet" "public-b" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "${var.vpc_cidr}.0.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "${var.aws_region}b"
  tags = {
    Name = "week4-public-subnetB"
  }
}


resource "aws_subnet" "public-c" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "${var.vpc_cidr}.1.0/24"
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.aws_region}c"
  tags = {
    Name = "week4-public-subnetC"
  }
}

resource "aws_subnet" "web-private-b" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "${var.vpc_cidr}.2.0/24"
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.aws_region}b"
  tags = {
    Name = "week4-web-private-subnetB"
  }
}
resource "aws_subnet" "web-private-c" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "${var.vpc_cidr}.3.0/24"
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.aws_region}c"
  tags = {
    Name = "week4-web-private-subnetC"
  }
}



resource "aws_subnet" "app-private-b" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "${var.vpc_cidr}.4.0/24"
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.aws_region}b"
  tags = {
    Name = "week4-app-private-subnetA"
  }
}

resource "aws_subnet" "app-private-c" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "${var.vpc_cidr}.5.0/24"
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.aws_region}c"
  tags = {
    Name = "week4-app-private-subnetC"
  }
}



resource "aws_subnet" "bastion-public-b" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "${var.vpc_cidr}.7.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "${var.aws_region}c"
  tags = {
    Name = "week4-bastion-public-subnetB"
  }
}
