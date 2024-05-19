resource "aws_instance" "frontend" {
  ami = "ami-0f3c7d07486cad139"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-080e84444fa0ee87c"]
  tags = {
    Name = "frontend"
  }

}

resource "aws_route53_record" "frontend" {
  zone_id = "Z06703532AGGGEDYFVXSW"
  name    = "frontend-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "backend" {
  ami = "ami-0f3c7d07486cad139"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-080e84444fa0ee87c"]
  tags = {
    Name = "backend"
  }

}
resource "aws_route53_record" "backend" {
  zone_id = "Z06703532AGGGEDYFVXSW"
  name    = "backend-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.backend.private_ip]
}

resource "aws_instance" "mysql" {
  ami = "ami-0f3c7d07486cad139"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-080e84444fa0ee87c"]
  tags = {
    Name = "mysql"
  }

}
resource "aws_route53_record" "mysql" {
  zone_id = "Z06703532AGGGEDYFVXSW"
  name    = "mysql-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}