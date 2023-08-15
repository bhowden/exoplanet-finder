#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <math.h>
#include <jansson.h>
#include <signal.h>
#include <pthread.h>
#include <libssh/libssh.h>
#include <libssh/server.h>
#include "astromath.c"

volatile sig_atomic_t running = 1;

int process_request(ssh_session session);

// The function that will run on each thread to handle the session
void *handle_session(void *arg)
{
    ssh_session session = (ssh_session)arg;
    process_request(session);
    ssh_disconnect(session);
    ssh_free(session);
    return NULL;
}

int process_request(ssh_session session)
{
    // Allocate a buffer to store data received from the SSH channel.
    char buffer[256];

    // Declare an SSH channel variable.
    ssh_channel channel;

    // Declare a variable to store the number of bytes read.
    int nbytes;

    // Create a new SSH channel for the given session.
    channel = ssh_channel_new(session);
    // Check if the channel creation was successful.
    if (channel == NULL)
        return SSH_ERROR; // Return an error if the channel creation failed.

    // Attempt to open the created SSH channel as a session.
    if (ssh_channel_open_session(channel) != SSH_OK)
    {
        // If opening the session fails, free the allocated channel resources.
        ssh_channel_free(channel);
        // Return an error as the session couldn't be opened.
        return SSH_ERROR;
    }

    // Define the exoplanet data
    struct Exoplanet exoplanet = {
        .name = "Gas Giant",
        .mass = 8.053,
        .planet_radius = 1.12,
        .orbital_radius = 2.774,
        .orbital_period = 4.8,
        .eccentricity = 0.37,
        .inclination = 0.0,
        .longitude_of_node = 0.0,
        .argument_of_periapsis = 0.0,
        .galacticLongitude = 0.0,
        .galacticLatitude = 0.0,
        .unix_time = 0.0,
        .distance = 0.0, // Initialize distance
        .ra = 0.0        // Initialize RA
    };

    // Receive JSON input from client
    nbytes = ssh_channel_read(channel, buffer, sizeof(buffer), 0);
    buffer[nbytes] = '\0';

    // Parse JSON input using Jansson
    json_t *root;
    json_error_t error;
    root = json_loads(buffer, 0, &error);

    if (root)
    {
        // Update exoplanet properties from JSON
        json_t *mass_json = json_object_get(root, "mass");
        if (json_is_number(mass_json))
            exoplanet.mass = json_number_value(mass_json);

        json_t *planet_radius_json = json_object_get(root, "planet_radius");
        if (json_is_number(planet_radius_json))
            exoplanet.planet_radius = json_number_value(planet_radius_json);

        json_t *orbital_radius_json = json_object_get(root, "orbital_radius");
        if (json_is_number(orbital_radius_json))
            exoplanet.orbital_radius = json_number_value(orbital_radius_json);

        json_t *orbital_period_json = json_object_get(root, "orbital_period");
        if (json_is_number(orbital_period_json))
            exoplanet.orbital_period = json_number_value(orbital_period_json);

        json_t *eccentricity_json = json_object_get(root, "eccentricity");
        if (json_is_number(eccentricity_json))
            exoplanet.eccentricity = json_number_value(eccentricity_json);

        json_t *inclination_json = json_object_get(root, "inclination");
        if (json_is_number(inclination_json))
            exoplanet.inclination = json_number_value(inclination_json);

        json_t *longitude_of_node_json = json_object_get(root, "longitude_of_node");
        if (json_is_number(longitude_of_node_json))
            exoplanet.longitude_of_node = json_number_value(longitude_of_node_json);

        json_t *argument_of_periapsis_json = json_object_get(root, "argument_of_periapsis");
        if (json_is_number(argument_of_periapsis_json))
            exoplanet.argument_of_periapsis = json_number_value(argument_of_periapsis_json);

        json_t *unix_time_json = json_object_get(root, "unix_time");
        if (json_is_number(unix_time_json))
            exoplanet.unix_time = json_number_value(unix_time_json);

        json_t *distance_json = json_object_get(root, "distance");
        if (json_is_number(distance_json))
            exoplanet.distance = json_number_value(distance_json);
        // If it's not a number, the initialized value of 0.0 will remain

        json_t *declination_json = json_object_get(root, "declination");
        if (json_is_number(declination_json))
            exoplanet.declination = json_number_value(declination_json);
        // If it's not a number, the initialized value of 0.0 will remain

       /// .galacticLongitude = 0.0,
       json_t *galacticLongitude_json = json_object_get(root, "galacticLongitude");
        if (json_is_number(galacticLongitude_json))
            exoplanet.galacticLongitude = json_number_value(galacticLongitude_json);


        json_t *galacticLatitude_json = json_object_get(root, "galacticLatitude");
        if (json_is_number(galacticLatitude_json))
            exoplanet.galacticLatitude = json_number_value(galacticLatitude_json);


        json_t *ra_json = json_object_get(root, "ra");
        if (json_is_number(ra_json))
            exoplanet.ra = json_number_value(ra_json);
        // If it's not a number, the initialized value of 0.0 will remain
        // ... (Parse other properties if needed)
        json_decref(root);
    }
    else
    {
        fprintf(stderr, "Error parsing JSON: %s\n", error.text);
        return SSH_ERROR;
    }

    // Convert system time to a double (in seconds)
    double current_time;

    // Check if unix_time is provided and not null
    if (exoplanet.unix_time > 0)
    {
        current_time = exoplanet.unix_time;
    }
    else
    {
        // Get the current system time
        time_t raw_time;
        time(&raw_time);
        current_time = (double)raw_time;
    }

    // Calculate the distance to the exoplanet & the Right Ascension (RA)
    calculateRaAndDistance(&exoplanet, current_time);

    // set galactic coordinates
    setGalacticCoordinates(&exoplanet);

    // Serialize the entire modified Exoplanet struct to JSON
    json_t *response = json_object();

    json_object_set_new(response, "name", json_string(exoplanet.name));
    json_object_set_new(response, "mass", json_real(exoplanet.mass));
    json_object_set_new(response, "planet_radius", json_real(exoplanet.planet_radius));
    json_object_set_new(response, "orbital_radius", json_real(exoplanet.orbital_radius));
    json_object_set_new(response, "orbital_period", json_real(exoplanet.orbital_period));
    json_object_set_new(response, "eccentricity", json_real(exoplanet.eccentricity));
    json_object_set_new(response, "inclination", json_real(exoplanet.inclination));
    json_object_set_new(response, "longitude_of_node", json_real(exoplanet.longitude_of_node));
    json_object_set_new(response, "argument_of_periapsis", json_real(exoplanet.argument_of_periapsis));
    json_object_set_new(response, "galacticLongitude", json_real(exoplanet.galacticLongitude));
    json_object_set_new(response, "galacticLatitude", json_real(exoplanet.galacticLatitude));
    json_object_set_new(response, "declination", json_real(exoplanet.declination));
    json_object_set_new(response, "unix_time", json_real(exoplanet.unix_time));

    if (isnan(exoplanet.distance) || isnan(exoplanet.ra))
    {
        // Indicate there was an error in solving Kepler's equation
        json_object_set_new(response, "error", json_string("Failed to solve Kepler's equation given the input."));

        // You can choose to omit ra and distance or set them to null values
        json_object_set_new(response, "distance", json_null());
        json_object_set_new(response, "ra", json_null());
    }
    else
    {
        json_object_set_new(response, "distance", json_real(exoplanet.distance));
        json_object_set_new(response, "ra", json_real(exoplanet.ra));
    }

    // Serialize the JSON object to a string
    char *response_str = json_dumps(response, JSON_COMPACT);

    // Clean up the JSON object
    json_decref(response);

    // Send the response
    ssh_channel_write(channel, response_str, strlen(response_str));
    ssh_channel_send_eof(channel);
    ssh_channel_close(channel);
    ssh_channel_free(channel);

    // Free the allocated string
    free(response_str);

    return SSH_OK;
}

void handle_signal(int signal)
{
    (void)signal; // to avoid unused parameter warning
    running = 0;
}

int main()
{

    printf("starting server");
    ssh_bind sshbind;
    ssh_session session;
    int ret_val = 0;

    signal(SIGINT, handle_signal);

    sshbind = ssh_bind_new();
    if (sshbind == NULL)
    {
        fprintf(stderr, "Error creating ssh_bind object\n");
        return 1;
    }

    ssh_bind_options_set(sshbind, SSH_BIND_OPTIONS_BINDADDR, "0.0.0.0");
    ssh_bind_options_set(sshbind, SSH_BIND_OPTIONS_BINDPORT_STR, "2222");
    ssh_bind_options_set(sshbind, SSH_BIND_OPTIONS_HOSTKEY, "ssh-rsa");
    ssh_bind_options_set(sshbind, SSH_BIND_OPTIONS_RSAKEY, "/opt/exoplanet.pem");

    if (ssh_bind_listen(sshbind) < 0)
    {
        fprintf(stderr, "Error binding to address and port: %s\n", ssh_get_error(sshbind));
        ret_val = 1;
        goto cleanup;
    }

    printf("Listening on port 2222...\n");

    while (running)
    {
        session = ssh_new();
        if (session == NULL)
        {
            fprintf(stderr, "Error creating SSH session\n");
            ret_val = 1;
            break;
        }

        if (ssh_bind_accept(sshbind, session) == SSH_ERROR)
        {
            fprintf(stderr, "Error accepting SSH connection\n");
            ret_val = 1;
            ssh_free(session);
            break;
        }

        pthread_t thread;
        int err = pthread_create(&thread, NULL, handle_session, session);
        if (err)
        {
            fprintf(stderr, "Error creating thread\n");
            ret_val = 1;
            ssh_free(session);
            break;
        }

        pthread_detach(thread);
    }

    cleanup:
    ssh_bind_free(sshbind);
    return ret_val;
}