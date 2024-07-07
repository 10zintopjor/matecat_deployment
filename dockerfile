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
    python3 \
    apache2 \
    python3-pip \
    build-essential \
    software-properties-common \
    mysql-client \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Copy any additional scripts or files if needed
# COPY your-script.sh /app/

# Command to keep the container running
CMD ["tail", "-f", "/dev/null"]
