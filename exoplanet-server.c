#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <libssh/libssh.h>
#include <jansson.h>

// Define constants
#define PI 3.14159265358979323846

// Define the structure for exoplanet data
struct Exoplanet {
    const char *name;
    double mass;              // in Jupiters
    double planet_radius;     // in Jupiter radii
    double orbital_radius;    // in AU
    double orbital_period;    // in years
    double eccentricity;
};

// Function to calculate the current distance to an exoplanet
double calculateDistance(const struct Exoplanet *planet, double current_time) {
    // Convert orbital period to days
    double orbital_period_days = planet->orbital_period * 365.25;

    // Calculate mean anomaly (assumes circular orbit)
    double mean_anomaly = (360.0 / orbital_period_days) * current_time;

    // Calculate distance using Kepler's Third Law (AU)
    double distance = pow(planet->orbital_radius, 1.5);

    return distance;
}

int process_request(ssh_session session) {
    char buffer[256];
    ssh_channel channel;
    int nbytes;

    channel = ssh_channel_new(session);
    if (channel == NULL)
        return SSH_ERROR;

    if (ssh_channel_open_session(channel) != SSH_OK) {
        ssh_channel_free(channel);
        return SSH_ERROR;
    }

    ssh_channel_request_exec(channel, "echo -n D:");

    // Define the exoplanet data
    struct Exoplanet exoplanet = {
        .name = "Gas Giant",
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
    json_t *root;
    json_error_t error;
    root = json_loads(buffer, 0, &error);

    if (root) {
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
    } else {
        fprintf(stderr, "Error parsing JSON: %s\n", error.text);
    }

    // Calculate the distance to the exoplanet
    double distance = calculateDistance(&exoplanet, 3.0); // Example current time

    // Format the response
    snprintf(buffer, sizeof(buffer), "%.4f", distance);

    // Send the response
    ssh_channel_write(channel, buffer, strlen(buffer));
    ssh_channel_send_eof(channel);
    ssh_channel_close(channel);
    ssh_channel_free(channel);
    return SSH_OK;
}

int main() {
    ssh_session session;

    // Set up SSH session
    session = ssh_new();
    if (session == NULL) {
        return 1;
    }

   // Load private key from /opt/private_key.pem
    if (ssh_options_set(session, SSH_OPTIONS_PRIVATEKEY, "/opt/exoplanet.pem") != SSH_OK) {
        fprintf(stderr, "Error setting private key: %s\n", ssh_get_error(session));
        ssh_free(session);
        return 1;
    }

    // Set SSH options
    ssh_options_set(session, SSH_OPTIONS_HOST, "0.0.0.0");
    ssh_options_set(session, SSH_OPTIONS_PORT, "2222");

    // Connect
    if (ssh_connect(session) != SSH_OK) {
        fprintf(stderr, "Error connecting: %s\n", ssh_get_error(session));
        ssh_free(session);
        return 1;
    }

    // Start SSH server
    if (ssh_bind(session, session) != SSH_OK) {
        fprintf(stderr, "Error binding session: %s\n", ssh_get_error(session));
        ssh_free(session);
        return 1;
    }

    // Listen for connections
    if (ssh_listen(session) < 0) {
        fprintf(stderr, "Error listening: %s\n", ssh_get_error(session));
        ssh_free(session);
        return 1;
    }

    printf("Listening on port 2222...\n");

    while (1) {
        ssh_session client_session = ssh_accept(session);
        if (client_session == NULL) {
            fprintf(stderr, "Error accepting incoming connection\n");
            ssh_free(session);
            return 1;
        }

        printf("Accepted a connection\n");

        if (process_request(client_session) != SSH_OK) {
            fprintf(stderr, "Error processing request\n");
            ssh_disconnect(client_session);
        }

        ssh_disconnect(client_session);
    }

    ssh_bind_free(session);
    ssh_finalize();

    return 0;
}