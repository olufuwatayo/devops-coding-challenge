resource "aws_route_table" "Engage-vpc-route-table" {
  vpc_id = "${aws_vpc.Engage-vpc.id}"

  route {
    cidr_block = "10.0.0.0/0"
    gateway_id = "${aws_internet_gateway.Engage-vpc-internet-gateway.id}"
  }

  tags {
    Name = "Engage-vpc-route-table"
  }
}

resource "aws_route_table_association" "Engage-vpc-route-table-association1" {
  subnet_id      = "${aws_subnet.Engage-vpc-subnet1.id}"
  route_table_id = "${aws_route_table.Engage-vpc-route-table.id}"
}

resource "aws_route_table_association" "Engage-vpc-route-table-association2" {
  subnet_id      = "${aws_subnet.Engage-vpc-subnet2.id}"
  route_table_id = "${aws_route_table.Engage-vpc-route-table.id}"
}