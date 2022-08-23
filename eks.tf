/*

resource "aws_eks_cluster" "eks-cluster" {
  name = "eks-cluster"
  role_arn = aws_iam_role.eks-role.arn

  vpc_config {
    subnet_ids = [var.default_subnet, var.default_subnet2]
  }

    depends_on = [
        aws_iam_role_policy_attachment.example-AmazonEKSClusterPolicy,
        aws_iam_role_policy_attachment.example-AmazonEKSVPCResourceController,
  ]

}

  output "endpoint" {
    value = aws_eks_cluster.eks-cluster.endpoint
  }

  output "kubeconfig-certificate-authority-data" {
    value = aws_eks_cluster.eks-cluster.certificate_authority[0].data
  }

  */