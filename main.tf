locals {
 italiano = ["zero", "uno", "due", "tre", "quattro", "cinque", "sei", "sette", "otto", "nove", "dieci"]
}

resource "null_resource" "counter" {
 count = "${length(local.italiano)}"
 provisioner "local-exec" {
   command = "echo ${count.index} is ${element(local.italiano,count.index)}"
 }
}

