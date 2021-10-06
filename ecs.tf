terraform {
  required_version = ">= 0.13"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_ecs_cluster" "nodejs-cluster" {
  name = "waypoint-nodejs-cluster"
}
