resource "aws_instance" "instance" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.sg_id
  tags = {
    name = "${var.name}-${var.env}"
  }
}

resource "aws_route53_record" "record" {
  zone_id  =var.zone_id
  name     = "${var.name}-${var.name}"
  type     = "A"
  ttl      = 30
  records = [aws_instance.instance.private_ip]
}



