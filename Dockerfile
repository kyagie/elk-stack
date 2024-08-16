# Use the official Ubuntu base image
FROM ubuntu:20.04

# Update and install any necessary packages (e.g., for testing)
RUN apt-get update && apt-get install -y \
    curl \
    vim \
    screen \
    && apt-get clean

# Create a directory for the volume
RUN mkdir -p /data

# Set the working directory
WORKDIR /data

# Set an entry point to keep the container running
CMD ["tail", "-f", "/dev/null"]