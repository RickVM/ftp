set -e

docker login

DATE=$(date +%Y-%m-%d-%H-%M)

# For harbor:
docker build -t rickvm/lftp:latest -t lftp:$DATE --pull --no-cache .
docker push rickvm/lftp --all-tags

echo "Successfully updated image. Tagged with: $DATE"
