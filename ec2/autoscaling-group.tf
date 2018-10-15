resource "aws_autoscaling_group" "ecs-autoscaling-group" {
    name                        = "${var.autoscaling-group-name}"
    max_size                    = "${var.max-instance-size}"
    min_size                    = "${var.min-instance-size}"
    desired_capacity            = "${var.desired-capacity}"
    vpc_zone_identifier         = ["${var.subnet-id-1}", "${var.subnet-id-2}"]
    launch_configuration        = "${aws_launch_configuration.ecs-launch-configuration.name}"
    health_check_type           = "ELB"
}

########################################
#ALB
########################################
resource "aws_alb" "ecs-load-balancer" {
    name                = "${var.load-balancer-name}"
    security_groups     = ["${var.security-group-id}"]
    subnets             = ["${var.subnet-id-1}", "${var.subnet-id-2}"]
}

resource "aws_alb_target_group" "ecs-target_group" {
    name                = "${var.target-group-name}"
    port                = "80"
    protocol            = "HTTP"
    vpc_id              = "${var.vpc-id}"

    // health_check {
    //     healthy_threshold   = "1"
    //     unhealthy_threshold = "0"
    //     interval            = "30"
    //     matcher             = "200"
    //     path                = "/"
    //     port                = "traffic-port"
    //     protocol            = "HTTP"
    //     timeout             = "5"
    // }
}

resource "aws_alb_listener" "alb-listener" {
    load_balancer_arn = "${aws_alb.ecs-load-balancer.arn}"
    port              = "80"
    protocol          = "HTTP"
    
    default_action {
        target_group_arn = "${aws_alb_target_group.ecs-target_group.arn}"
        type             = "forward"
    }
}

output "ecs-load-balancer-name" {
  value = "${aws_alb.ecs-load-balancer.name}"
}

output "ecs-target-group-arn" {
  value = "${aws_alb_target_group.ecs-target_group.arn}"
}
########################################
#Launch config
########################################
resource "aws_launch_configuration" "ecs-launch-configuration" {
    name                        = "${var.launch-configuration-name}"
    image_id                    = "${var.image-id}"
    instance_type               = "${var.instance-type}"
    iam_instance_profile        = "${var.ecs-instance-profile-name}" 
    security_groups             = ["${var.security-group-id}"]
    associate_public_ip_address = "true"
    key_name                    = "${var.ecs-key-pair-name}"
    user_data                   = "${template_file.ecs-launch-configuration-user-data.rendered}"
}

resource "template_file" "ecs-launch-configuration-user-data" {
    template = "${file("${path.module}/user-data.tpl")}"

    vars {
        ecs-cluster-name = "${var.ecs-cluster-name}"
    }
}
