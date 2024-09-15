// public subnet route table
resource "aws_route_table" "public-route-table" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet_gateway.id
  }

  tags = {
    Name = "week4-public-route-table"
  }
}

resource "aws_route_table_association" "public-subnet_b" {
  subnet_id      = aws_subnet.public-b.id
  route_table_id = aws_route_table.public-route-table.id
}

// web subnet route table association
resource "aws_route_table" "web-private-route-table" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat_b.id
  }

  tags = {
    Name = "week4-web-private-route-table"
  }
}

resource "aws_route_table_association" "web-private-subnet-b" {
  subnet_id      = aws_subnet.web-private-b.id
  route_table_id = aws_route_table.web-private-route-table.id
}

resource "aws_route_table_association" "web-private-subnet-c" {
  subnet_id      = aws_subnet.web-private-c.id
  route_table_id = aws_route_table.web-private-route-table.id
}

// app subnet route table association
resource "aws_route_table" "app-private-route-table" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat_b.id
  }

  tags = {
    Name = "week4-app-private-route-table"
  }
}

resource "aws_route_table_association" "app-private-subnet-b" {
  subnet_id      = aws_subnet.app-private-b.id
  route_table_id = aws_route_table.app-private-route-table.id
}

resource "aws_route_table_association" "app-private-subnet-c" {
  subnet_id      = aws_subnet.app-private-c.id
  route_table_id = aws_route_table.app-private-route-table.id
}


// bastion subnet association
resource "aws_route_table" "bastion-public-route-table" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet_gateway.id
  }

  tags = {
    Name = "week4-bastion-public-route-table"
  }
}

resource "aws_route_table_association" "bastion-subnet-b" {
  subnet_id      = aws_subnet.bastion-public-b.id
  route_table_id = aws_route_table.bastion-public-route-table.id
}
