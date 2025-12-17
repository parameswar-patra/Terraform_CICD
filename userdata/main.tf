resource "aws_instance" "my_userdata_instance_1" {
    ami = "ami-0d176f79571d18a8f"
    instance_type = "t2.micro"
    tags = {
      Name = "my-userdata-instance-1"
    }
    user_data = file("test.sh")
}