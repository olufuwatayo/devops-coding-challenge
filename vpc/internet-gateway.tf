resource "aws_internet_gateway" "Engage-vpc-internet-gateway" {
  vpc_id = "${aws_vpc.Engage-vpc.id}"

  tags {
    Name = "Engage-vpc-internet-gateway"
  }
}