variable "length" {
  type        = number
  description = "Length of random string generated"
  default     = 4

  validation {
    condition     = var.length >= 10
    error_message = "Err: Password is to short"
  }
}