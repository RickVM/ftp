set -e

docker login

DATE=$(date +%Y-%m-%d-%H-%M)

docker buildx build -t rickvm/lftp:$DATE -t rickvm/lftp:latest \
     --pull --no-cache --push \
     --platform linux/arm64,linux/amd64 .

# docker push rickvm/lftp --all-tags

echo "Successfully updated images. Tagged with: $DATE and latest"
