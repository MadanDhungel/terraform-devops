variable "web_username" {
  description = "The username for the webapplication"
  type        = string
  sensitive   = true
}

variable "web_password" {
  description = "The password for the web application"
  type        = string
  sensitive   = true
}