data "aws_iam_policy_document" "redirector_assume_role" {
  statement {
    actions = [
      "sts:AssumeRole"
    ]
    principals {
      identifiers = [
        "lambda.amazonaws.com"
      ]
      type = "Service"
    }
  }
}

resource "aws_lambda_function" "redirector" {
  filename      = "${path.module}/default-index-redirect.zip"
  function_name = "${var.distribution_name}-default-index-redirector"
  handler       = "exports.handler"
  publish       = true
  role          = "${data.aws_iam_policy_document.redirector_assume_role.json}"
  runtime       = "nodejs6.10"
}

resource "aws_lambda_permission" "redirector" {
  action        = "lambda:GetFunction"
  function_name = "${aws_lambda_function.redirector.function_name}"
  principal     = "edgelambda.amazonaws.com"
  statement_id  = "AllowExecutionFromCloudFront"
}