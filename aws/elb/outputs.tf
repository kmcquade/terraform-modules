output "this_elb_id" {
  description = "The name of the ELB"
  value       = "${aws_elb.this.id}"
}

output "this_elb_arn" {
  description = "The ARN of the ELB"
  value       = "${aws_elb.this.arn}"
}

output "this_elb_name" {
  description = "The name of the ELB"
  value       = "${aws_elb.this.name}"
}

output "this_elb_dns_name" {
  description = "The DNS name of the ELB"
  value       = "${aws_elb.this.dns_name}"
}

output "this_elb_zone_id" {
  description = "The canonical hosted zone ID of the ELB (to be used in a Route 53 Alias record)"
  value       = "${aws_elb.this.zone_id}"
}
