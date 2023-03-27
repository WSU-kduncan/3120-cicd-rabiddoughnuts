# 3120-cicd-rabiddoughnuts Project 4

- [Part 1](#Part-1)
- [Part 2](#Part-2)
- [Part 3](#Part-3)


## Part 1

- This project is to practice using containers and images to streamline development processes. I am using Docker as my container software, in wls2, and making an image that hosts a web server using apache2.
  - To install wsl2, you open powershell and type `wsl --install`. To install docker desktop you just need to download the .exe installer off the main website and run it, and then in settings select `enable integration with wsl distro` and restart to allow it to work in wsl2
  - To build an image from a Dockerfile you give it a base image to start with using the `FROM` command, and then tell it what commands to `RUN` and what files to `COPY` and then `CMD` lets you control how the image is run as a container. `sudo docker build -t webserv .`
  - `sudo docker run -d -p 6000:80 project`
  - Go to browser, type in host ip:6000 in this case, as running it on my own machine, and then view the webpage

## Part 2

- Go to Dockerhub and click `create new repo` then name it, put a description if you want, then click accept.  


## Part 3
