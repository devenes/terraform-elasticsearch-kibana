resource "aws_route_table" "public" {
  vpc_id = aws_vpc.demo.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.demo.id
  }

  tags = {
    Name = "${local.common_prefix}-public-rt"
  }
}

resource "aws_route_table_association" "public_1" {
  subnet_id      = aws_subnet.public_1.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public_2" {
  subnet_id      = aws_subnet.public_2.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public_3" {
  subnet_id      = aws_subnet.public_3.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table" "nated_1" {
  vpc_id = aws_vpc.demo.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.gw_1.id
  }

  tags = {
    Name = "${local.common_prefix}-nated-rt-1"
  }
}

resource "aws_route_table" "nated_2" {
  vpc_id = aws_vpc.demo.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.gw_2.id
  }

  tags = {
    Name = "${local.common_prefix}-nated-rt-2"
  }
}

resource "aws_route_table" "nated_3" {
  vpc_id = aws_vpc.demo.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.gw_3.id
  }

  tags = {
    Name = "${local.common_prefix}-nated-rt-3"
  }
}

resource "aws_route_table_association" "nated_1" {
  subnet_id      = aws_subnet.nated_1.id
  route_table_id = aws_route_table.nated_1.id
}

resource "aws_route_table_association" "nated_2" {
  subnet_id      = aws_subnet.nated_2.id
  route_table_id = aws_route_table.nated_2.id
}
