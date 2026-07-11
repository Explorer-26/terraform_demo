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

resource "local_file" "file2" {
  filename = "file2.txt"
  content  = local_file.file1.content
}

resource "local_file" "file3" {
  filename = "file3.txt"
  content  = "Hello Hey"
}
