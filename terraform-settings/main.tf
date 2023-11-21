resource "aws_iam_user" "name" {
  name = count.index ==0 ? "devuser" : "produser"
  count = 2
}
output "iam_arn" {
  value = aws_iam_user.name[*].arn
}