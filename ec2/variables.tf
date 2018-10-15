//----------------------------------------------------------------------
// Shared Variables
//----------------------------------------------------------------------

variable "vpc-id" {}
variable "subnet-id-1" {}
variable "subnet-id-2" {}
variable "security-group-id" {}
variable "ecs-cluster-name" {}
variable "ecs-instance-role-name" {}
variable "ecs-instance-profile-name" {}
variable "ecs-key-pair-name" {}

//----------------------------------------------------------------------
// Autoscaling Group Variables
//----------------------------------------------------------------------

variable "autoscaling-group-name" {
    default     = "Engage-ecs-asg"
}

variable "max-instance-size" {
    default     = 5
}

variable "min-instance-size" {
    default     = 1
}

variable "desired-capacity" {
    default     = 1
}

variable "health-check-grace-period" {
    default     = 300
}

//----------------------------------------------------------------------
// Application Load Balancer Variables
//----------------------------------------------------------------------

variable "load-balancer-name" {
    default     = "Engage-load-balancer"
}

variable "target-group-name" {
    default     = "Engage-ecs-target-group"
}

//----------------------------------------------------------------------
// Launch Configuration Variables
//----------------------------------------------------------------------

variable "launch-configuration-name" {
    default = "Engage-ecs-launch-configuration"
}

variable "image-id" {
    default = "ami-d61027ad"
}

variable "instance-type" {
    default = "t2.micro"
}