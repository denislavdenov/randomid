resource "random_id" "server" {

  byte_length = 8
}

resource "null_resource" "server" {
  provisioner "local-exec" {
    command = "echo ${random_id.server.hex}"
  }
}
