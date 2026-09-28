resource "aws_subnet" "car_game_a" {
  vpc_id                  = aws_vpc.car_game.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "eu-north-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "car-game-subnet-a"
  }
}

resource "aws_subnet" "car_game_b" {
  vpc_id                  = aws_vpc.car_game.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "eu-north-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "car-game-subnet-b"
  }
}
