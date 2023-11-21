resource "aws_iam_user" "iam_users" {
  name = var.usernames[count.index]
  count = 3
}