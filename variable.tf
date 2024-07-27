variable "no_of_alerts" {
  type=number 
  
}
variable "nrql" {
    type=list(string)
  
}
variable "alerts_name" {
  type= list(string)
  default = [ "l1","l2","l3","l4","l5" ]
}
variable "account_id" {
  type= number
}
variable "api_key" {
  type=string
}
variable "region" {
  type= string
}