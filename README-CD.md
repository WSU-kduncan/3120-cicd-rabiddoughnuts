# Part 1

- The goal of this project is to practice using continuous deployment tools and understand the methods to improve deployment workflow. We will be using github workflows, webhooks, dockerhub, and docker to automate deployment.
- The tag function is applied to the last commit`git tag -a v1.2.3 -m "version message"`
- A git workflow uses a virtualized setting to run commands that you set up when you push, tag, or potentially pull from github, depending on the criteria you set. We use workflows to autobuild docker images upon updates to our versioning.
- https://hub.docker.com/repository/docker/rabiddoughnuts/project/general
