resource "aws_instance" "name" {
    ami = "ami-062f0cc54dbfd8ef1"
    instance_type = "t2.micro"
    availability_zone = "ap-south-1a"
    user_data = file("test.sh")
}