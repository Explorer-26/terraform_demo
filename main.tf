terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

resource "local_file" "hello" {
  filename = "hello.txt"
  content  = "Hello Terraform, this is smaple test1"
}

resource "local_file" "file1" {
  filename = "file1.txt"
  content  = "Hello"
}



