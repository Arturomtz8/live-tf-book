provider "aws" {
  region = "us-east-2"
}

module "webserver_cluster" {
  source                 = "git::https://github.com/Arturomtz8/modules-tf-book.git//services/webserver-cluster?ref=v0.0.2"
  cluster_name           = "webservers-stage"
  db_remote_state_bucket = "state-bucket-001"
  db_remote_state_key    = "stage/services/mysql/terraform.tfstate"
  instance_type          = "t2.micro"
  min_size               = 2
  max_size               = 3
}