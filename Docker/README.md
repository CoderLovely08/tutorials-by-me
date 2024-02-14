# Docker Notes

Docker is a containerization platform that allows developers to package applications and their dependencies into portable containers, which can be deployed consistently across different environments.

## 1. Docker file

This serves as the entry point which is like a blueprint for the image, this defines the structure and contents of the image, here's a sample file which is an image for a simple node, express app.

```Dockerfile
FROM node:15
WORKDIR /app
COPY package.json .
RUN npm install
copy . ./
EXPOSE 3000
CMD ["node","app.js"]
```

- Step 1 - We define the node version this image will use
- Step 2 - WORKDIR: this defines the current working directory
- Step 3 - now we copy the contents of the package.json file to the current dir
- Step 4 - Run: this is executed when the image is built, then install the updated packages
- Step 5 - now copy the source code to the current directory, it seems a little confusing but it's for the optimization
- Step 6 - the Expose port is only for the documentation purpose and doesn't really do anything
- Step 7 - CMD: this is executed when the container runs

## 2. Create/Run/Delete custom image and containers

In order to create your custom image follow step 1 to create a dockerfile for the image, then run the following command

```bash
# without giving a name to the image
docker build .

# build an image and giving it a name
docker build -t <image_name> .
# dot(.) represents the docker file is present in the current directory
```

1.  List existing images

```bash
docker images
```

2.  List containers

```bash
docker ps
```

3.  Delete image

```bash
docker rmi <imageId>
```

or

```bash
docker image rm <imageId>
```

4.  Delete container

```bash
docker rm <container_id>
```

5.  Run image and container by creating a new container for the first time

```bash
docker run -d --name <container name> <image name>

# setup port
docker run -p docker-port:service-port -d --name <container name> <image name>

# docker port - to which the global traffic will hit
# service port - the actual port to which the docker port will redirect traffic to

# Example:
docker run -p 4000:3000 -d --name <container name> <image name>
# Explanation: The 4000 is the port which will be used by actual clients to connect to application http://localhost:4000
# - Whereas the 3000 is the actual port on which our server is runnin inside the container, now it's the job of docker to redirect any incoming traffic on 4000 to 3000
```

6.  Run an existing container

```bash
docker run <container_name>
```

7.  Stop a container

```bash
docker stop <container_id>
# or
docker stop <container_name>
```

8. Stop and delete a container

```bash
docker rm <container name> -f
# -f is for force shutdown and delete
```


_Note - By defualt Docker containers can access the internet and ouside world but not vice versa_


## 3. Some more useful commands
1. View files in container
```bash
docker exec -it <container_name> bash
# -it is a flag for interactive mode
```