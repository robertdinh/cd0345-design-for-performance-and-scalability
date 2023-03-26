# TODO: Define the output variable for the lambda function.
output "arn" {
  description = "Lambda Function Arn"
  value       = aws_lambda_function.greet_lambda.arn
}