# Use the official Ubuntu base image
FROM ubuntu:latest

# Update the package list and install necessary packages
RUN apt-get update

# Set the working directory
WORKDIR /app

# Copy the application files to the container
COPY . /app

# Set the default command to run when starting the container
CMD ["/bin/bash"]