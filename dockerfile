# Use an Ubuntu 18.04 base image
FROM ubuntu:18.04

# Set environment variables to avoid interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Update package list and install packages
RUN apt-get update && apt-get install -y \
    apache2 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Expose port 80 (default port for Apache2)
EXPOSE 80

# Start Apache2 service when the container starts
CMD ["apache2ctl", "-D", "FOREGROUND"]