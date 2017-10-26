set -e # Fail fast

DISTRIBUTION_ID=E3NPMF6HM4HO53
BUCKET_NAME=vastu.io-cdn

# Build a fresh copy
hugo -v 

# Copy over pages - not static js/img/css/downloads
aws s3 sync --acl "public-read" --sse "AES256" public/ s3://$BUCKET_NAME --exclude 'post'

