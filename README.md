# Exoplanet Server

This project provides a simple C program that calculates the current distance to an exoplanet based on its orbital parameters. It includes a Dockerfile to create a Docker image that runs the program.

## Requirements

- Docker
- Git

## Generating a PEM File

To use the Exoplanet Service, you'll need a PEM (Privacy Enhanced Mail) file for secure communication. You can generate a PEM file using the following steps:

1. Open a terminal.

2. Run the following command to generate a private key and save it to `exoplanet.pem`:

   ```sh
   openssl genpkey -algorithm RSA -out exoplanet.pem
   ```

3. Run the following command to extract the public key and save it to the same file:

   ```sh
   openssl rsa -pubout -in exoplanet.pem -out exoplanet.pem
   ```

## Getting Started

1. Clone the repository:

```sh
git clone https://github.com/bhowden/exoplanet-finder.git
cd exoplanet-finder
```

2. Place the `exoplanet.pem` file you generated earlier in the same directory.

3. Build the Docker image:

```sh
docker build -t exoplanet-server .
```

4. Run the Docker container:

```sh
docker run -d --privileged -p 2222:2222 --name exoplanet-container exoplanet-server
```

5. Access the Exoplanet Service:

The Exoplanet Server will be running inside the Docker container. You can interact with it using SSH.

```sh
ssh -p 2222 -i exoplanet.pem root@localhost
```

6. Calculate Exoplanet Distance:

Once connected via SSH, you can send JSON data to the service to calculate the distance to an exoplanet.

```sh
echo '{"mass": 5.0, "orbital_radius": 3.0, "orbital_period": 6.0, "eccentricity": 0.2}' | ssh -p 2222 -i exoplanet.pem root@localhost
```

The service will respond with the calculated distance to the exoplanet.

7. Clean Up:

To stop and remove the Docker container, run:

```sh
docker stop exoplanet-container
docker rm exoplanet-container
```

## Customization

You can modify the `exoplanet-server.c` source code and `Makefile` to customize the behavior of the Exoplanet Service.