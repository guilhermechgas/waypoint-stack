project = "example-nodejs"

app "example-nodejs" {
  labels = {
    "service" = "example-nodejs",
    "env"     = "dev"
  }

  build {
    use "pack" {}
    registry {
      use "aws-ecr" {
      region = "us-east-1"  
      tag = "latest"
      }
    }
  }

  deploy {
    use "aws-ecs" {
      cluster = "waypoint-nodejs-cluster"
      region = "us-east-1"
      memory = "512"
    }
  }

  }
