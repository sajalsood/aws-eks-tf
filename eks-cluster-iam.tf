#
# EKS Cluster Resources # * IAM Role to allow EKS service to manage other AWS services #

resource "aws_iam_role" "demo-cluster" {
    name = "terraform-eks-demo-cluster"
    assume_role_policy = jsonencode({ 
"Version": "2012-10-17",
"Statement": [
{
"Effect": "Allow", 
"Principal": {
"Service": "eks.amazonaws.com"
},
"Action": "sts:AssumeRole"
}
]
})
}

resource "aws_iam_role_policy_attachment" "demo-cluster-AmazonEKSClusterPolicy" {
    policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
    role = "${aws_iam_role.demo-cluster.name}"
}

resource "aws_iam_role_policy_attachment" "demo-cluster-AmazonEKSServicePolicy" {
    policy_arn = "arn:aws:iam::aws:policy/AmazonEKSServicePolicy"
    role = "${aws_iam_role.demo-cluster.name}"
}