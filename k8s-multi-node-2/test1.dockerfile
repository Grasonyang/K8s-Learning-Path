# Use the official Alpine image as the base image
FROM alpine:latest

# Update the package list and install necessary packages
RUN apk update && apk upgrade && \
    apk add --no-cache bash

# Set the working directory
WORKDIR /app

# Copy the application files to the container
COPY . /app

# Set the entrypoint to bash
ENTRYPOINT ["/bin/bash"]