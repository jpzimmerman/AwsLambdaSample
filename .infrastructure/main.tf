module "aws-lambda" {
  source        = "terraform-aws-modules/lambda/aws"
  function_name = "sample_lambda"
  description   = "Test lambda provisioned with IaC"
  handler       = "AwsLambdaSample::AwsLambdaSample.Function::FunctionHandler"
  runtime       = "dotnetcore3.1"

  create_package         = false
  local_existing_package = "../AwsLambdaSample.zip"

  tags = {
    Name = "aws-lambda1"
  }
}