output "password" {
  value     = module.a_password.password
  sensitive = true
}

output "password_length" {
  description = "Length of generated password"
  value       = module.a_password.password_length
}