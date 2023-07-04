terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

#resource "aws_iam_user" "lb" {
 # name = "TFUserVSC"
#}

resource "aws_iam_user" "userlist" {
  count = "${length(var.username)}"
  name = "${element(var.username,count.index )}"
  path = "/system/"
}