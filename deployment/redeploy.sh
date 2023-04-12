#!/bin/sh

docker pull rabidoughnuts/project
docker image prune -f
docker stop project
docker rm project
docker run -p 80:80 -d --name project rabiddoughnuts/project
