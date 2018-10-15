variable "ecs-target-group-arn" {}

variable "ecs-cluster-name" {
  default = "engage-ecs-cluster"
}

variable "ecs-service-role-arn" {
  default = "engage-ecs-cluster"
}

variable "ecs-service-name" {
  default = "engage-ecs-service"
}

variable "ecs-load-balancer-name" {
  default = "engage-ecs-load-balancer"
}
