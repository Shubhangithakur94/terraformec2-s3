

# Create a bucket
resource "aws_s3_bucket" "b1" {

  bucket = "s3-terraform-bucket-pc"

#   acl    = "public"   # or can be "public-read"

  tags = {

    Name        = "My bucket"

    Environment = "Dev"

  }

}

# Upload an object
resource "aws_s3_bucket_object" "object" {

  bucket = aws_s3_bucket.b1.id

  key    = "shubhi.txt"

  acl    = "public-read"  # or can be "public-read"

  source = "C:/Users/DELL/Documents/shubhi.txt"

  etag = filemd5("C:/Users/DELL/Documents/shubhi.txt")

}





