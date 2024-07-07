# Use an Ubuntu 18.04 base image
FROM ubuntu:18.04

# Set environment variables to avoid interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Update package list and install packages
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    git \
    vim \
    apache2 

# Set the working directory
WORKDIR /app

# Start Apache2 service (optional, adjust as needed)
CMD service apache2 start && tail -f /dev/null
