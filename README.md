# Exoplanet Server

This project provides a simple C program that calculates the current distance to an exoplanet based on its orbital parameters, including Right Ascension (RA). It includes a Dockerfile to create a Docker image that runs the program.

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

## 1. Clone the repository:

```sh
git clone https://github.com/bhowden/exoplanet-finder.git
cd exoplanet-finder
```

## 2. Place the `exoplanet.pem` file you generated earlier in the same directory.

## 3. Build the Docker image:

```sh
docker build -t exoplanet-finder .
```

## 4. Run the Docker container:

```sh
docker run -d --privileged -p 2222:2222 --name exoplanet-container exoplanet-finder
```

## 5. Access the Exoplanet Service:

The Exoplanet Server will be running inside the Docker container. You can interact with it using SSH.

```sh
ssh -p 2222 -i exoplanet.pem root@localhost
```

## 6. Calculate Exoplanet Distance and Right Ascension

Once connected via SSH, you can send a JSON object to the service to calculate the distance to an exoplanet and its Right Ascension (RA). The `exoplanet.unix_time` property is optional and defaults to the current time if not provided.

To calculate the distance and RA, use the following command, replacing the JSON data with your desired values:

```sh
echo '{"name": "Exoplanet Name", "mass": 5.0, "planet_radius": 1.2, "orbital_radius": 3.0, "orbital_period": 6.0, "eccentricity": 0.2, "inclination": 30.0, "longitude_of_node": 45.0, "argument_of_periapsis": 120.0, "unix_time": 1691592726}' | ssh -p 2222 -i exoplanet.pem root@localhost
```

Replace the values in the JSON object with your exoplanet's data. The `unix_time` property is optional. If provided, it specifies the Unix time in seconds for which the calculations are performed. If not provided, the calculations will be based on the current time.

The service will respond with the calculated distance to the exoplanet and its Right Ascension (RA) in radians.

## 7. Clean Up:

To stop and remove the Docker container, run:

```sh
docker stop exoplanet-container
docker rm exoplanet-container
```

## Customization

You can modify the `exoplanet-finder.c` source code and `Makefile` to customize the behavior of the Exoplanet Service.

# Exoplanet Data JSON Format

This README section provides information on the JSON representation of exoplanet data, equivalent to the C struct `struct Exoplanet`. It also outlines the units used for each property in the JSON object.

## JSON Object Structure

The JSON object representing exoplanet data has the following properties:

- `name` (string): The name of the exoplanet.
- `mass` (number): The mass of the exoplanet in Jupiters.
- `planet_radius` (number): The radius of the exoplanet in Jupiter radii.
- `orbital_radius` (number): The orbital radius of the exoplanet in Astronomical Units (AU).
- `orbital_period` (number): The orbital period of the exoplanet in years.
- `eccentricity` (number): The eccentricity of the exoplanet's orbit. The eccentricity value ranges between 0 (circular orbit) and 1 (parabolic orbit), with values in between indicating elliptical orbits.
- `inclination` (number): The orbital inclination of the exoplanet in degrees.
- `longitude_of_node` (number): The longitude of the ascending node of the exoplanet's orbit in degrees.
- `argument_of_periapsis` (number): The argument of periapsis of the exoplanet's orbit in degrees.
- `unix_time` (number, optional): The Unix time in seconds (optional). If provided, it specifies the time for which calculations are performed.

## Units

The units used for each property in the JSON object are as follows:

- `mass`: Jupiters (Jupiter mass)
- `planet_radius`: Jupiter radii
- `orbital_radius`: Astronomical Units (AU)
- `orbital_period`: Years
- `eccentricity`: Unitless (ratio)
- `inclination`: Degrees
- `longitude_of_node`: Degrees
- `argument_of_periapsis`: Degrees
- `unix_time`: Seconds (Unix timestamp)

## Example JSON Object

Here is an example of how the exoplanet data can be represented in JSON:

```json
{
    "name": "Super Earth",
    "mass": 9.1,
    "planet_radius": 2.1,
    "orbital_radius": 0.812,
    "orbital_period": 289.9,
    "eccentricity": 0.72,
    "inclination": 10.5,
    "longitude_of_node": 45.0,
    "argument_of_periapsis": 120.0,
    "unix_time": 1691592726
}
