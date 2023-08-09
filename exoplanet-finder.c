/*
This C code defines a program that acts as an Exoplanet Server, calculating various parameters related to 
exoplanets based on their orbital properties. The program includes functionality to calculate the distance 
to an exoplanet using Kepler's equations, as well as the Right Ascension (RA) of the exoplanet. 
The program is designed to be accessed via SSH and responds to incoming JSON data with calculated 
distance and RA values in a JSON object. The code also utilizes the libssh library for SSH communication
and the jansson library for JSON handling. It defines a struct Exoplanet to hold exoplanet data and
includes functions to perform calculations based on this data. The program listens for incoming SSH
connections, processes requests, and sends back the calculated results.
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h >	// Include this header for time functions
#include <math.h >	// Include this header for mathematical functions
#include <libssh/libssh.h>
#include <jansson.h>

// Define constants
#define PI 3.14159265358979323846

struct Exoplanet {
    const char *name;
    double mass;                   // in Jupiters
    double planet_radius;          // in Jupiter radii
    double orbital_radius;         // in AU
    double orbital_period;         // in years
    double eccentricity;
    double inclination;            // Orbital inclination in degrees
    double longitude_of_node;      // Longitude of the ascending node in degrees
    double argument_of_periapsis;  // Argument of periapsis in degrees
    double unix_time;              // Optional Unix time in seconds
};


double calculateDistance(const struct Exoplanet *planet, double current_time)
{
    // Convert orbital period to seconds
    double orbital_period_seconds = planet->orbital_period * 365.25 * 24 * 60 * 60;

    // Calculate mean anomaly using Kepler's equation
    double mean_anomaly = 2 * PI * (current_time / orbital_period_seconds);

    // Calculate eccentric anomaly using mean anomaly (assumes circular orbit)
    double eccentric_anomaly = mean_anomaly;

    // Calculate distance using Kepler's Third Law (AU)
    double distance_au = planet->orbital_radius * (1 - planet->eccentricity * cos(eccentric_anomaly));

    // Convert distance from AU to light years (1 AU = 0.0000158125074 light years)
    double distance_light_years = distance_au * 0.0000158125074;

    return distance_light_years;
}

// Function to calculate the Right Ascension (RA) of an exoplanet for an elliptical orbit
double calculateRa(const struct Exoplanet *planet, double current_time) {
    // Convert orbital period to seconds
    double orbital_period_seconds = planet->orbital_period * 365.25 * 24 * 60 * 60;

    // Calculate mean anomaly using Kepler's equation
    double mean_anomaly = 2 * PI * (current_time / orbital_period_seconds);

    // Calculate eccentric anomaly using mean anomaly
    double eccentric_anomaly = mean_anomaly;

    // Calculate distance from the focus (center of mass) to the exoplanet
    double distance = planet->orbital_radius * (1 - planet->eccentricity * cos(eccentric_anomaly));

    // Calculate the true anomaly
    double true_anomaly = 2 * atan(sqrt((1 + planet->eccentricity) / (1 - planet->eccentricity)) * tan(eccentric_anomaly / 2));

    // Calculate Cartesian coordinates in the orbital plane
    double x_orbital = distance * (cos(true_anomaly) - planet->eccentricity);
    double y_orbital = distance * sqrt(1 - planet->eccentricity * planet->eccentricity) * sin(true_anomaly);

    // Convert orbital inclination, longitude of the ascending node, and argument of periapsis to radians
    double inclination_rad = planet->inclination * (PI / 180.0);
    double node_rad = planet->longitude_of_node * (PI / 180.0);
    double periapsis_rad = planet->argument_of_periapsis * (PI / 180.0);

    // Calculate the x, y, z coordinates in the equatorial plane
    double x_eq = x_orbital * (cos(node_rad) * cos(periapsis_rad) - sin(node_rad) * sin(periapsis_rad) * cos(inclination_rad))
                 - y_orbital * (sin(node_rad) * cos(periapsis_rad) + cos(node_rad) * sin(periapsis_rad) * cos(inclination_rad));
    double y_eq = x_orbital * (cos(node_rad) * sin(periapsis_rad) + sin(node_rad) * cos(periapsis_rad) * cos(inclination_rad))
                 + y_orbital * (cos(node_rad) * cos(periapsis_rad) - sin(node_rad) * sin(periapsis_rad) * cos(inclination_rad));

    // Calculate the right ascension (RA)
    double ra = atan2(y_eq, x_eq);

    return ra;
}

int process_request(ssh_session session)
{
    char buffer[256];
    ssh_channel channel;
    int nbytes;

    channel = ssh_channel_new(session);
    if (channel == NULL)
        return SSH_ERROR;

    if (ssh_channel_open_session(channel) != SSH_OK)
    {
        ssh_channel_free(channel);
        return SSH_ERROR;
    }

    ssh_channel_request_exec(channel, "echo -n D:");

    // Define the exoplanet data
    struct Exoplanet exoplanet = { .name = "Gas Giant",
        .mass = 8.053,
        .planet_radius = 1.12,
        .orbital_radius = 2.774,
        .orbital_period = 4.8,
        .eccentricity = 0.37,
    };

    // Receive JSON input from client
    nbytes = ssh_channel_read(channel, buffer, sizeof(buffer), 0);
    buffer[nbytes] = '\0';

    // Parse JSON input using Jansson
    json_t * root;
    json_error_t error;
    root = json_loads(buffer, 0, &error);

    if (root)
    {
        // Update exoplanet properties from JSON
        json_t *mass_json = json_object_get(root, "mass");
        if (json_is_number(mass_json))
            exoplanet.mass = json_number_value(mass_json);

        json_t *orbital_radius_json = json_object_get(root, "orbital_radius");
        if (json_is_number(orbital_radius_json))
            exoplanet.orbital_radius = json_number_value(orbital_radius_json);

        json_t *orbital_period_json = json_object_get(root, "orbital_period");
        if (json_is_number(orbital_period_json))
            exoplanet.orbital_period = json_number_value(orbital_period_json);

        json_t *eccentricity_json = json_object_get(root, "eccentricity");
        if (json_is_number(eccentricity_json))
            exoplanet.eccentricity = json_number_value(eccentricity_json);

        // ... (Parse other properties if needed)
        json_decref(root);
    }
    else
    {
        fprintf(stderr, "Error parsing JSON: %s\n", error.text);
    }

    // Convert system time to a double (in seconds)
    double current_time;

    // Check if unix_time is provided and not null
    if (exoplanet.unix_time > 0) {
        current_time = exoplanet.unix_time;
    } else {
        // Get the current system time
        time_t raw_time;
        time(&raw_time);
        current_time = (double) raw_time;
    }

    // Calculate the distance to the exoplanet
    double distance = calculateDistance(&exoplanet, current_time);

    // Calculate the Right Ascension (RA)
    double ra = calculateRa(&exoplanet, current_time);

    // Create a JSON object with distance and RA
    json_t *response = json_object();
    json_object_set_new(response, "distance", json_real(distance));
    json_object_set_new(response, "ra", json_real(ra));

    // Serialize the JSON object to a string
    char *response_str = json_dumps(response, JSON_COMPACT);
    json_decref(response);

    // Send the response
    ssh_channel_write(channel, response_str, strlen(response_str));
    ssh_channel_send_eof(channel);
    ssh_channel_close(channel);
    ssh_channel_free(channel);
    free(response_str); // Free the allocated string
    return SSH_OK;
}

int main()
{
	ssh_session session;

	// Set up SSH session
	session = ssh_new();
	if (session == NULL)
	{
		return 1;
	}

	// Load private key from /opt/private_key.pem
	if (ssh_options_set(session, SSH_OPTIONS_PRIVATEKEY, "/opt/exoplanet.pem") != SSH_OK)
	{
		fprintf(stderr, "Error setting private key: %s\n", ssh_get_error(session));
		ssh_free(session);
		return 1;
	}

	// Set SSH options
	ssh_options_set(session, SSH_OPTIONS_HOST, "0.0.0.0");
	ssh_options_set(session, SSH_OPTIONS_PORT, "2222");

	// Connect
	if (ssh_connect(session) != SSH_OK)
	{
		fprintf(stderr, "Error connecting: %s\n", ssh_get_error(session));
		ssh_free(session);
		return 1;
	}

	// Start SSH server
	if (ssh_bind(session, session) != SSH_OK)
	{
		fprintf(stderr, "Error binding session: %s\n", ssh_get_error(session));
		ssh_free(session);
		return 1;
	}

	// Listen for connections
	if (ssh_listen(session) < 0)
	{
		fprintf(stderr, "Error listening: %s\n", ssh_get_error(session));
		ssh_free(session);
		return 1;
	}

	printf("Listening on port 2222...\n");

	while (1)
	{
		ssh_session client_session = ssh_accept(session);
		if (client_session == NULL)
		{
			fprintf(stderr, "Error accepting incoming connection\n");
			ssh_free(session);
			return 1;
		}

		printf("Accepted a connection\n");

		if (process_request(client_session) != SSH_OK)
		{
			fprintf(stderr, "Error processing request\n");
			ssh_disconnect(client_session);
		}

		ssh_disconnect(client_session);
	}

	ssh_bind_free(session);
	ssh_finalize();

	return 0;
}