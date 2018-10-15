resource "aws_vpc" "Engage-vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = "true"

  tags {
    Name = "Engage-vpc"
  }
}

output "id" {
  value = "${aws_vpc.Engage-vpc.id}"
}
