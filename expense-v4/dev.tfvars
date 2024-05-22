env = "dev"
ami = "ami-0f3c7d07486cad139"
zone_id = "Z06703532AGGGEDYFVXSW"
sg_id = ["sg-080e84444fa0ee87c"]
components = {
  frontend = {
    name = "frontend"
    instance_type = "t3.micro"
  }
  backend = {
    name ="backend"
    instance_type = "t3.micro"
  }
  mysql = {
    name = "mysql"
    instance_type = "t3.micro"
  }
}
