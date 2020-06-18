resource "aws_s3_bucket" "image-bucket" {
    bucket  = "webserver-images321-sristykibucket"
    acl     = "public-read"


provisioner "local-exec" { 
        command     = "git clone https://github.com/shrishtijain9232/cloudangel.git"

}

provisioner "local-exec" {
        when        =   destroy
        command     =   "echo Yes | rmdir /s photo"
    }
}


resource "aws_s3_bucket_object" "image-upload" {
    content_type = "image/jpeg"
    bucket  = "${aws_s3_bucket.image-bucket.id}"
    key     = "webphoto.jpeg"
    source  = "cloudangel/1525607279-bitcoin.jpg"
    acl     = "public-read"
}