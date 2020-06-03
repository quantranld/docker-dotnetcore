# docker-dotnetcore

docker build -t frontend .
docker run --rm -p:5000:5000 -p:5001:5001 -v ./src:/app -t frontend