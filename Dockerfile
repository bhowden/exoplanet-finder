# Use a base image with Debian
FROM debian:latest

# Set the working directory
WORKDIR /app

# Install required packages (including gcc and other dependencies)
RUN apt-get update && apt-get install -y gcc make libssh-dev libjansson-dev

# Copy the source code and makefile into the container
COPY *.c /app/
COPY Makefile /app/

# Copy exoplanet.pem to /opt
COPY exoplanet.pem /opt/exoplanet.pem

# Set proper permissions for the private key
RUN chmod 600 /opt/exoplanet.pem

# Build the C program using the makefile
RUN make

# Expose the SSH port
EXPOSE 2222

# Run the exoplanet-finder program directly
CMD ["/app/exoplanet-finder"]