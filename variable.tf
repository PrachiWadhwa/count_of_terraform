
variable "account_id" {
  type= number
}
variable "api_key" {
  type=string
}
variable "region" {
  type= string
}
variable "newrelicconfig"{

    type= list(map(string))
}
