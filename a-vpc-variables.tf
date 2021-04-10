#
# Variables Configuration
#

variable "cluster-name" {
  default = "terraform-eks-demo-sajal"
  type    = string
}

variable "app" {
  type        = string
  description = "Name of application"
  default     = "rockstar-react-app"
}

variable "docker-image" {
  type        = string
  description = "name of the docker image to deploy"
  default     = "sajalsood/rockstar-react-aks:latest"
}

