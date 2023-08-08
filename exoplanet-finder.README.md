# Exoplanet Server

This project provides a simple C program that calculates the current distance to an exoplanet based on its orbital parameters. It includes a Dockerfile to create a Docker image that runs the program as a background service using systemd.

## Requirements

- Docker
- Git

## Getting Started

1. Clone the repository:

```sh
git clone https://github.com/yourusername/exoplanet-server.git
cd exoplanet-server
```

2. Build the Docker image:

```sh
docker build -t exoplanet-server .
```

3. Run the Docker container:

```sh
docker run -d --privileged -p 2222:2222 --name exoplanet-container exoplanet-server
```

4. Access the Exoplanet Service:

The Exoplanet Service will be running in the background as a systemd service inside the Docker container. You can interact with it using SSH.

```sh
ssh -p 2222 root@localhost
```

Provide the password (default: `root`) when prompted.

5. Calculate Exoplanet Distance:

Once connected via SSH, you can send JSON data to the service to calculate the distance to an exoplanet.

```sh
echo '{"mass": 5.0, "orbital_radius": 3.0, "orbital_period": 6.0, "eccentricity": 0.2}' | ssh -p 2222 root@localhost
```

The service will respond with the calculated distance to the exoplanet.

6. Clean Up:

To stop and remove the Docker container, run:

```sh
docker stop exoplanet-container
docker rm exoplanet-container
```

## Customization

You can modify the `exoplanet-server.c` source code and `makefile` to customize the behavior of the Exoplanet Service.

## Notes

- Running systemd inside a Docker container is not the most common practice and may have limitations.
- This project is for educational purposes and demonstrates a specific setup. It may not be suitable for production use.
```

Replace `yourusername` with your actual GitHub username and make any necessary adjustments to the instructions to match your project's specifics.