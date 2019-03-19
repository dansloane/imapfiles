#!/bin/sh

# bauploader
# Uploads images in current directory to the BA S3 bucket
# dms/ssq/19.3.2019

set -e

BUCKET_NAME=ssq-involve-ba

/usr/local/bin/aws s3 sync --delete . s3://$BUCKET_NAME/ --exclude '*' --include '*.jpeg' --include '*.jpg' --acl public-read


#end
