
# Use ubuntu-18.04 as base image
FROM ubuntu:18.04

# Update ubuntu
RUN apt-get update -y

# Install dependencies
RUN apt-get install -y nodejs npm git git-core

# Copy the setup script to the image & make it executable
ADD setup.sh /tmp/
RUN chmod +x /tmp/setup.sh

# Open up all possible ports
EXPOSE 3000
EXPOSE 3333
EXPOSE 8000
EXPOSE 8888

# Run the setup script
ENTRYPOINT ["/tmp/setup.sh"]
