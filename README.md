# Project Overview

- This project is to practice using containers and images to streamline development processes. I am using Docker Desktop as my container software, working in wsl2, and making an image that hosts a web server using apache2.
- Part 4 - Diagramming goes here
```mermaid
  flowchart LR
    subgraph Code
    a1(code to be <br> containerized)
    a2(Dockerfile for <br> containerization)
    end
    subgraph Github
    b1(workflow gets <br> activated on <br> push to build <br> new image and <br> upload to Dockerhub)
    end
    subgraph Dockerhub
    c1(Dist. point for <br> updated containers)
    end
    Code-->Github
    Dockerhub-->Code
    Github-->Dockerhub
```

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

- To make GitHub secrets you go to the `settings` of your repository, scroll down to the `secrets` tab, open it, select `actions` and then `create new secret`.
  - A Docker username secret and a Docker password or auth token secret.
- I created a GitHub workflow to automate syncronization of my Dockerhub.
  - This workflow activates whenever I push an update to the main branch of my repo, and logs into Dockerhub, and then builds and pushes an image from my docker Dockerfile.
  - I use an environment variable for my Dockerhub repo name, as well as my unique secrets for my Dockerhub username and login credentials.
