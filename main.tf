provider "aws" {
region = "us-west-2"  #Specify the aws region
}

#creating a vpc

resource "aws_vpc" "my_vpc" {
cidr_block = "10.0.0.0/16"
tags = {
Name = "my-vpc"
}
}

#Create a subnet within the vpc

resource "aws_subnet" "my_subnet" {
vpc_id = aws_vpc.my_vpc.id
cidr_block = "10.0.1.0/24"
availability_zone = "us-west-2a"
tags = {
Name = "my-subnet"
}
}
