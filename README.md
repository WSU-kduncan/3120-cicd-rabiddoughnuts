# Project Overview

- This project is to practice using containers and images to streamline development processes. I am using Docker Desktop as my container software, working in wsl2, and making an image that hosts a web server using apache2.
- Part 4 - Diagramming goes here
  - Include a diagram (or diagrams) of your entire workflow. Meaning it should start with a project change / update, the steps that happen in between, and end with the updated version when the server is queried (web page is accessed)

# Run Project Locally

- To install wsl2, you open powershell and type `wsl --install`. To install Docker Desktop you just need to download the .exe installer off the main Docker website and run it, then in settings select `enable integration with wsl distro` and restart your computer to allow it to work in wsl2.
- To build an image from a Dockerfile you give it a base image to start with using the `FROM` command, then tell it what commands to `RUN` and what files to `COPY` and the `CMD` command lets you control how the image is run as a container. `sudo docker build -t webserv .`
- `sudo docker run -d -p 8080:80 project`
- Go to your browser of choice, type in `localhost:8080` and then view the webpage.

# DockerHub

- Go to Dockerhub and click `create new repo` and then name it, put a description if you want, and then click accept.
- `docker login` and then fill out your set credentials.
  - Using tokens are more secure.
- `docker push accountname/reponame:tagname`

# GitHub Actions

- Configuring GitHub Secrets
  - What secrets were set based on what info
- Behavior of GitHub workflow
  - what does it do and when
  - what variables in workflow are custom to your project

# Deployment

- Description of container restart script
- Setting up a webhook on the server
  - How you created you own listener
  - How you installed the [webhook on GitHub](https://github.com/adnanh/webhook)
  - How to keep the webhook running if the instance is on
- Description of Webhook task definition file
- Steps to set up a notifier in GitHub or DockerHub
