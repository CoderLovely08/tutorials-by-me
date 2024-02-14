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

## 2. Create custome image
In order to create your custom image follow step 1 to create a dockerfile for the image, then run the following command

```bash
docker build -t <image_name> .
# dot(.) represents the docker file is present in the current directory
```