resource "aws_subnet" "public_1" {
  vpc_id                  = aws_vpc.demo.id
  cidr_block              = cidrsubnet(aws_vpc.demo.cidr_block, 8, 0)
  availability_zone       = data.aws_availability_zones.available.names[0]
  map_public_ip_on_launch = true

  tags = {
    Name = "${local.common_prefix}-public-subnet-${data.aws_availability_zones.available.names[0]}"
  }
}

resource "aws_subnet" "public_2" {
  vpc_id                  = aws_vpc.demo.id
  cidr_block              = cidrsubnet(aws_vpc.demo.cidr_block, 8, 1)
  availability_zone       = data.aws_availability_zones.available.names[1]
  map_public_ip_on_launch = true

  tags = {
    Name = "${local.common_prefix}-public-subnet-${data.aws_availability_zones.available.names[1]}"
  }
}

resource "aws_subnet" "public_3" {
  vpc_id                  = aws_vpc.demo.id
  cidr_block              = cidrsubnet(aws_vpc.demo.cidr_block, 8, 2)
  availability_zone       = data.aws_availability_zones.available.names[2]
  map_public_ip_on_launch = true

  tags = {
    Name = "${local.common_prefix}-public-subnet-${data.aws_availability_zones.available.names[2]}"
  }
}

resource "aws_subnet" "nated_1" {
  vpc_id            = aws_vpc.demo.id
  cidr_block        = cidrsubnet(aws_vpc.demo.cidr_block, 8, 3)
  availability_zone = data.aws_availability_zones.available.names[0]

  tags = {
    Name = "${local.common_prefix}-nated-subnet-${data.aws_availability_zones.available.names[0]}"
  }
}

resource "aws_subnet" "nated_2" {
  vpc_id            = aws_vpc.demo.id
  cidr_block        = cidrsubnet(aws_vpc.demo.cidr_block, 8, 4)
  availability_zone = data.aws_availability_zones.available.names[1]

  tags = {
    Name = "${local.common_prefix}-nated-subnet-${data.aws_availability_zones.available.names[1]}"
  }
}

resource "aws_subnet" "nated_3" {
  vpc_id            = aws_vpc.demo.id
  cidr_block        = cidrsubnet(aws_vpc.demo.cidr_block, 8, 5)
  availability_zone = data.aws_availability_zones.available.names[2]

  tags = {
    Name = "${local.common_prefix}-nated-subnet-${data.aws_availability_zones.available.names[2]}"
  }
}
