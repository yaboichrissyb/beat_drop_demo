S3DirectUpload.config do |c|
  c.access_key_id     = "AKIAIUPV622LBWJUBBGA"
  c.secret_access_key = "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"
  c.bucket            = "beatdropmp3"
  c.region            = "Oregon"
  c.url               = "https://#{c.bucket}.s3.amazonaws.com/"
end
