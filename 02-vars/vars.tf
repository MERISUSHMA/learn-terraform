variable "sample1" {
  default= "hello"
}

output "sample1" {
  value = var.sample1
}

variable "fruits" {
  default = ["apple", "banana", "orange"]
}

output "fruits_first_fruit" {
  value = var.fruits[0]
}

variable "fruits_with_quantity" {
  default = {
    apple = 100
    banana = 200
    orange = 50

  }
}

output "Fruits_apple_quantity" {
  value = var.fruits_with_quantity["apple"]
}
 output "fruits_apple_quantity_with_name" {
   value = "Fruits Apple is having only ${var.fruits_with_quantity["apple"]} quantity"
 }

variable "test1" {}
output "test1" {
  value= var.test1

}

variable "env" {}
output "env" {
  value = var.env
}