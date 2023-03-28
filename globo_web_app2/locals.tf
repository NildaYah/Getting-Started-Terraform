resource "random_integer" "rand" {
  min = 10000
  max = 99999
}

locals {
  common_taggs = {
    company = var.company
    project = "${var.company}-${var.project}"
    billing = var.billing_code
  }

  s3_bucket_name = "globo-web-app-${random_integer.rand.result}"
}