resource "aws_internet_gateway" "car_game" {
  vpc_id = aws_vpc.car_game.id

  tags = {
    Name = "car-game-igw"
  }
}

resource "aws_route_table" "car_game_public" {
  vpc_id = aws_vpc.car_game.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.car_game.id
  }

  tags = {
    Name = "car-game-public-rt"
  }
}

resource "aws_route_table_association" "car_game_a" {
  subnet_id      = aws_subnet.car_game_a.id
  route_table_id = aws_route_table.car_game_public.id
}

resource "aws_route_table_association" "car_game_b" {
  subnet_id      = aws_subnet.car_game_b.id
  route_table_id = aws_route_table.car_game_public.id
}