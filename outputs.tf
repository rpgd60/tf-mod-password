output "password" {
  description = "The generated password"
  value       = random_password.the_pass.result
  sensitive   = false ## ONLY for testing 
}

output "password_length" {
  description = "Length of generated password"
  value       = random_password.the_pass.length
}