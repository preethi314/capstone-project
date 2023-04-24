#!/bin/bash

# Stop and remove the existing container
docker stop reactjs-demo-app-1
docker rm reactjs-demo-app-1

# Pull the latest image from Docker Hub
docker pull sriganesh001/reactjs-demo

# Start a new container with the updated image
docker run -d --name reactjs-demo-app-1 -p 80:80 sriganesh001/reactjs-demo
