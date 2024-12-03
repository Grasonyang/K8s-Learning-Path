# Use the official Ubuntu base image
FROM ubuntu:latest

# Set environment variable for non-interactive installation
ENV DEBIAN_FRONTEND=noninteractive

# Install systemd and other necessary packages
RUN apt-get update && \
    apt-get install -y systemd systemd-sysv netcat-traditional sudo conntrack ethtool socat net-tools curl iputils-ping nano openssh-server docker.io apt-transport-https gnupg && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set the default command to run systemd as init
STOPSIGNAL SIGRTMIN+3
CMD ["/lib/systemd/systemd"]
