locals {
  pat = var.pat
}
module "a_password" {
  # (works)  source = "../../../../modules/tf-password"
  #  (fails)  source = "git::https://dev.azure.com/rpgd60/tf-course-01/_git/tf-modules-ado//modules/tf-password"
  #  (works) source = "git@ssh.dev.azure.com:v3/rpgd60/tf-course-01/tf-modules-ado//modules/tf-password"
# Works - note that PAT cannot be var or local
  # (works) source = "git::https://<PAT>@dev.azure.com/rpgd60/tf-course-01/_git/tf-modules-ado//modules/tf-password/"
# source = "git@ssh.dev.azure.com:v3/rpgd60/tf-course-01/tf-modules-ado//modules/tf-password"
source = "git::https://uvqgvqzf5hqmmdzvngm42hy6mzei5qlyaqedhnexpwy4b4lzefkq@dev.azure.com/rpgd60/tf-course-01/_git/tf-modules-ado//modules/tf-password/"
  length = 12
}