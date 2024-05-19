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

variable "Fruits_with_quantity" {
  default = {
    apple = 100
    banana = 200
    orange = 50

  }
}

output "Fruits_apple_quantity" {
  value = var.Fruits_with_quantity["apple"]
}
