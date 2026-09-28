resource "aws_vpc" "car_game" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "car-game-vpc"
  }
}