terraform {
  backend "s3" {
    bucket = "bootcamp-myawsbucket-tf-remote-state" # Bucket name
    key    = "basic-python-app.tfstate"
    region = "us-east-2"
  }
}
