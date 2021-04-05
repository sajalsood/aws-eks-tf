variable "profile" {
  description = "AWS profile name for CLI"
  default     = "root"
}

variable "region" {
  description = "AWS region for infrastructure."
  default     = "us-east-1"
}

variable "cluster-name" {
  description = "Name of the cluster"
  type        = string
  default     = "terraform-eks-sajal"
}