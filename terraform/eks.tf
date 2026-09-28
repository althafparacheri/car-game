resource "aws_eks_cluster" "car_game" {
  name     = "car-game-cluster"
  role_arn = aws_iam_role.eks_cluster.arn
  version  = "1.34"

  vpc_config {
    subnet_ids = [
      aws_subnet.car_game_a.id,
      aws_subnet.car_game_b.id
    ]
  }

  tags = {
    Name = "car-game-cluster"
  }
}
resource "aws_eks_node_group" "car_game" {
  cluster_name    = aws_eks_cluster.car_game.name
  node_group_name = "car-game-nodes"
  node_role_arn   = aws_iam_role.eks_node.arn

  subnet_ids = [
    aws_subnet.car_game_a.id,
    aws_subnet.car_game_b.id
  ]

  instance_types = ["t3.small"]

  scaling_config {
    desired_size = 1
    max_size     = 1
    min_size     = 1
  }

  tags = {
    Name = "car-game-worker"
  }
}