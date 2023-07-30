output "s3_bucket_arn" {
    value  = aws_s3_bucket.terraform_state.arn
    description = "The S3 Bucket ARN"
  
}

output "dynomoDB-name" {
    value  = aws_dynamodb_table.terraform_locks.name
    description = "The S3 Bucket ARN"
  
}