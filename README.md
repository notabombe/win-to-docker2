# Docker Windows 11 Container

This repository contains a Dockerfile that creates a Docker image with Windows 11. 

## Prerequisites

Ensure that you have Docker installed on your machine.

## Building the Docker Image

To build the Docker image, navigate to the directory containing the Dockerfile and run the following command:

```bash
docker build -t docker_image_name .
```

Replace `docker_image_name` with the name you want to give to your Docker image.

## Running the Docker Container

After the Docker image has been built, you can run a container from it using the following command:

```bash
docker run --name docker_container_name docker_image_name
```

Replace `docker_container_name` with the name you want to give to your Docker container, and `docker_image_name` with the name of your Docker image.

## Interacting with the Docker Container

To interact with the running Docker container, you can use the following command:

```bash
docker exec -it docker_container_name cmd
```

Replace `docker_container_name` with the name of your Docker container.

## Stopping and Removing the Docker Container

To stop the Docker container, use the following command:

```bash
docker stop docker_container_name
```

And to remove the Docker container, use the following command:

```bash
docker rm docker_container_name
```

Replace `docker_container_name` with the name of your Docker container in both commands.

## Documentation

This Docker container runs Windows 11. For more information about Docker and how to use Docker containers, visit the [official Docker documentation](https://docs.docker.com/).