provider "aws" {
  region = "us-east-1"  # Modify with the AWS region where you want to create the ECR
}

resource "aws_ecr_repository" "my_reepository" {
  name = "my-reepository"  # Name of your ECR repository
  image_tag_mutability = "MUTABLE"  # Can be "IMMUTABLE" or "MUTABLE" based on your use case
  lifecycle {
    prevent_destroy = true  # Prevents accidental deletion of the repository
  }
}

output "repository_url" {
  value = aws_ecr_repository.my_reepository.repository_url
}
