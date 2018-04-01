#example inputs

region = "ap-south-x"

subnets = ["subnet-xxxxxx"]

security_groups = ["sg-xxxxxxx"]

internal = false

name = "elb-for-frontend"

listener = [
  {
    instance_port     = "80"
    instance_protocol = "HTTP"
    lb_port           = "80"
    lb_protocol       = "HTTP"
  },
]

health_check = [
  {
    target              = "HTTP:80/"
    interval            = 30
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 5
  },
]

number_of_instances = 2

instances = ["i-xxxxxxxxxxxxx ", "i-xxxxxxxxxxxxxx"]
