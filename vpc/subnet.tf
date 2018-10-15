resource "aws_subnet" "Engage-vpc-subnet1" {
  vpc_id            = "${aws_vpc.Engage-vpc.id}"
  cidr_block        = "10.0.0.0/24"
  availability_zone = "us-east-1a"

  tags {
    Name = "Engage-vpc-subnet"
  }
}

resource "aws_subnet" "Engage-vpc-subnet2" {
  vpc_id            = "${aws_vpc.Engage-vpc.id}"
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1b"

  tags {
    Name = "Engage-vpc-subnet"
  }
}

output "subnet1-id" {
  value = "${aws_subnet.Engage-vpc-subnet1.id}"
}

output "subnet2-id" {
  value = "${aws_subnet.Engage-vpc-subnet2.id}"
}
