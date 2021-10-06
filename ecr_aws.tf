resource "aws_ecr_repository" "node-image-repo" {
  name = "nodejs-image"
  
  image_scanning_configuration {
    scan_on_push = true

}
}
