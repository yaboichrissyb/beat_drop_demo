S3DirectUpload.config do |c|
  c.access_key_id     = ""
  c.secret_access_key = ""
  c.bucket            = "beatdropmp3"
  c.region            = "Oregon"
  c.url               = "https://#{c.bucket}.s3.amazonaws.com/"
end
