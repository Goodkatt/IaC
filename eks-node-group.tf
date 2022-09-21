/*
resource "aws_eks_node_group" "node-group" {
  cluster_name = aws_eks_cluster.eks-cluster.id
  node_group_name = "Test"
  node_role_arn = aws_iam_role.node-role.arn
  subnet_ids = [ var.default_subnet, var.default_subnet2 ]

  scaling_config {
    desired_size = 1
    max_size = 1
    min_size = 1

  }

    ami_type = "AL2_x86_64"
    instance_types = ["t2.nano"]

}



resource "aws_iam_role" "node-role" {
  name = "eks-node-group-example"

  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ec2.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
}

resource "aws_iam_role_policy_attachment" "node-role-AmazonEKSWorkerNodePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
  role       = aws_iam_role.node-role.name
}

resource "aws_iam_role_policy_attachment" "node-role-AmazonEKS_CNI_Policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
  role       = aws_iam_role.node-role.name
}

resource "aws_iam_role_policy_attachment" "node-role-AmazonEC2ContainerRegistryReadOnly" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
  role       = aws_iam_role.node-role.name
}
*/