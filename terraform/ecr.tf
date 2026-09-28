resource "aws_ecr_repository" "car_game" {
  name = "car-game"

  image_scanning_configuration {
    scan_on_push = false
  }
}
