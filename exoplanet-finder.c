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
#include <time.h> // Include this header for time functions
#include <math.h> // Include this header for mathematical functions
#include <libssh/libssh.h>
#include <jansson.h>
#include <signal.h>
#include <pthread.h>

// Define constants
#define PI 3.14159265358979323846

#ifndef M_PI
#define M_PI (3.14159265358979323846)
#endif

// position angle of the North Celestial Pole (in degrees) in Galactic coordinates
#define ANGLE_NCP 123.932
// the declination of the North Galactic Pole (in degrees)
#define DEC_NGP 27.12825
// right ascension of the North Galactic Pole (in degrees).
#define RA_NGP 192.85948

#define RAD_TO_DEG(radians) ((radians) * (180.0 / PI))
#define DEG_TO_RAD(degrees) ((degrees) * (PI / 180.0))


volatile sig_atomic_t running = 1;

int process_request(ssh_session session);
double solveKeplersEquation(double M, double e);
void equatorial_to_galactic(double ra, double dec, double *l, double *b);

struct Exoplanet
{
    const char *name;
    double mass;           // in Jupiters
    double planet_radius;  // in Jupiter radii
    double orbital_radius; // in AU
    double orbital_period; // in years
    double eccentricity;
    double inclination;           // Orbital inclination in degrees
    double longitude_of_node;     // Longitude of the ascending node in degrees
    double argument_of_periapsis; // Argument of periapsis in degrees
    double unix_time;             // Optional Unix time in seconds
    double distance;              // Calculated distance result
    double ra;                    // Calculated Right Ascension result
    double declination;
    double galacticLongitude;
    double galacticLatitude;
};

// The function that will run on each thread to handle the session
void *handle_session(void *arg)
{
    ssh_session session = (ssh_session)arg;
    process_request(session);
    ssh_disconnect(session);
    ssh_free(session);
    return NULL;
}

// Function to calculate the Right Ascension (RA) of an exoplanet for an elliptical orbit
void calculateRaAndDistance(struct Exoplanet *planet, double current_time)
{
    // Convert orbital period to seconds
    double orbital_period_seconds = planet->orbital_period * 365.25 * 24 * 60 * 60;

    // Calculate mean anomaly using Kepler's equation Function
    double mean_anomaly = 2 * PI * (current_time / orbital_period_seconds);

    // Calculate eccentric anomaly using mean anomaly
    double eccentric_anomaly = solveKeplersEquation(mean_anomaly, planet->eccentricity);

    // keplar equation solver function didnt come to a value exit early
    if (isnan(eccentric_anomaly))
    {
        planet->distance = NAN;
        planet->ra = NAN;
        return; // Exit the function early
    }

    // Calculate distance from the focus (center of mass) to the exoplanet
    double distance = planet->orbital_radius * (1 - planet->eccentricity * cos(eccentric_anomaly));

    double distance_light_years = distance * 0.0000158125074;

    planet->distance = distance_light_years;

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
    double x_eq = x_orbital * (cos(node_rad) * cos(periapsis_rad) - sin(node_rad) * sin(periapsis_rad) * cos(inclination_rad)) - y_orbital * (sin(node_rad) * cos(periapsis_rad) + cos(node_rad) * sin(periapsis_rad) * cos(inclination_rad));
    double y_eq = x_orbital * (cos(node_rad) * sin(periapsis_rad) + sin(node_rad) * cos(periapsis_rad) * cos(inclination_rad)) + y_orbital * (cos(node_rad) * cos(periapsis_rad) - sin(node_rad) * sin(periapsis_rad) * cos(inclination_rad));

    // After obtaining the x and y equatorial coordinates, proceed to calculate the right ascension (RA) using the atan2 function
    double ra = atan2(y_eq, x_eq);

    // ensures that the Right Ascension (RA) is always in the positive range
    if (ra < 0)
        ra += 2 * PI;

    planet->ra = ra;

    // Calculate the z coordinate in the equatorial plane
    double z_eq = x_orbital * (sin(periapsis_rad) * sin(inclination_rad)) + y_orbital * (cos(periapsis_rad) * sin(inclination_rad));

    // Calculate declination (Dec) using the z coordinate
    double dec = asin(z_eq / sqrt(x_eq * x_eq + y_eq * y_eq + z_eq * z_eq));

    planet->declination = RAD_TO_DEG(dec); // Convert declination from radians to degrees
}

void setGalacticCoordinates(struct Exoplanet *planet)
{
    double l, b;
    equatorial_to_galactic(planet->ra, planet->declination, &l, &b);
    planet->galacticLongitude = l;
    planet->galacticLatitude = b;
}

// Function to solve Kepler's equation for the eccentric anomaly (E) using the Newton-Raphson method.
// Parameters:
// - M: Mean anomaly
// - e: Eccentricity of the orbit
double solveKeplersEquation(double M, double e)
{
    // Initial approximation for eccentric anomaly
    double E = M;

    // Tolerance for convergence
    double delta = 0.000001;

    // Loop for a maximum of 100 iterations (this number can be adjusted as needed)
    for (int i = 0; i < 100; i++)
    {
        // Calculate the value of Kepler's equation at the current approximation
        double f = E - e * sin(E) - M;

        // Calculate the derivative of Kepler's equation with respect to E
        double f_prime = 1 - e * cos(E);

        // Update the approximation using the Newton-Raphson formula
        double E_new = E - f / f_prime;

        // Check for convergence: if the change in E is less than the defined tolerance, the method has converged
        if (fabs(E_new - E) < delta)
        {
            return E_new;
        }

        // Update the value of E for the next iteration
        E = E_new;
    }

    // If the method hasn't converged after the maximum number of iterations, return NaN
    return NAN;
}

void equatorial_to_galactic(double ra, double dec, double *l, double *b)
{
    // Convert input angles from degrees to radians
    double ra_rad = DEG_TO_RAD(ra);

    double dec_rad = DEG_TO_RAD(dec);

    // Convert equatorial coordinates to cartesian coordinates
    double x = cos(dec_rad) * cos(ra_rad);
    double y = cos(dec_rad) * sin(ra_rad);
    double z = sin(dec_rad);

    // Apply rotation matrix for equatorial to galactic transformation
    double x_gal = -x * sin(DEG_TO_RAD(ANGLE_NCP)) + y * cos(DEG_TO_RAD(ANGLE_NCP));
    double y_gal = -x * sin(DEG_TO_RAD(DEC_NGP)) * cos(DEG_TO_RAD(ANGLE_NCP)) - y * sin(DEG_TO_RAD(DEC_NGP)) * sin(DEG_TO_RAD(ANGLE_NCP)) + z * cos(DEG_TO_RAD(DEC_NGP));
    double z_gal = x * cos(DEG_TO_RAD(DEC_NGP)) * cos(DEG_TO_RAD(ANGLE_NCP)) + y * cos(DEG_TO_RAD(DEC_NGP)) * sin(DEG_TO_RAD(ANGLE_NCP)) + z * sin(DEG_TO_RAD(DEC_NGP));

    // Convert cartesian galactic coordinates to spherical coordinates
    *l = atan2(y_gal, x_gal);
    *b = asin(z_gal);

    // Convert resulting l and b from radians to degrees
    *l = fmod((*l + 2.0 * M_PI), (2.0 * M_PI)) * 180.0 / M_PI;
    *b = *b * 180.0 / M_PI;

    // Adjust the origin of l to be at the North Galactic Center
    *l = *l - RA_NGP;
    if (*l < 0)
    {
        *l += 360;
    }
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
    ssh_bind sshbind;    // SSH bind object for the server-side configuration
    ssh_session session; // SSH session object for client connections
    int ret_val = 0;     // By default, the main function will return this value if there's no error

    signal(SIGINT, handle_signal); // Handle Ctrl+C interrupts gracefully

    // Create a new SSH bind object
    sshbind = ssh_bind_new();

    // Check if the SSH bind object was created successfully
    if (sshbind == NULL)
    {
        fprintf(stderr, "Error creating ssh_bind object\n");
        return 1; // Exit with error code
    }

    // Configure SSH bind object options
    ssh_bind_options_set(sshbind, SSH_BIND_OPTIONS_BINDADDR, "0.0.0.0");          // Bind to all available interfaces
    ssh_bind_options_set(sshbind, SSH_BIND_OPTIONS_BINDPORT_STR, "2222");         // Set the bind port to 2222
    ssh_bind_options_set(sshbind, SSH_BIND_OPTIONS_HOSTKEY, "ssh-rsa");           // Set the hostkey type
    ssh_bind_options_set(sshbind, SSH_BIND_OPTIONS_RSAKEY, "/opt/exoplanet.pem"); // Set the path to the RSA key file

    // Try to start listening for incoming SSH connections
    if (ssh_bind_listen(sshbind) < 0)
    {
        fprintf(stderr, "Error binding to address and port: %s\n", ssh_get_error(sshbind));
        ret_val = 1;  // Set return value to indicate error
        goto cleanup; // Jump to cleanup to free resources
    }

    printf("Listening on port 2222...\n"); // Inform user the server is ready

    // Main loop: wait for and handle incoming SSH connections
    while (running)
    {
        // Create a new SSH session object for each incoming connection
        session = ssh_new();

        // Check if the SSH session object was created successfully
        if (session == NULL)
        {
            fprintf(stderr, "Error creating SSH session\n");
            ret_val = 1;
            break; // Exit the loop on error
        }

        // Wait for an incoming connection and establish an SSH session
        if (ssh_bind_accept(sshbind, session) == SSH_ERROR)
        {
            fprintf(stderr, "Error accepting SSH connection\n");
            ret_val = 1;
            ssh_free(session); // Free the session resource
            break;             // Exit the loop on error
        }

        pthread_t thread; // Thread object to handle the established SSH session

        // Create a new thread to handle the SSH session
        int err = pthread_create(&thread, NULL, handle_session, session);
        if (err)
        {
            fprintf(stderr, "Error creating thread\n");
            ret_val = 1;
            ssh_free(session); // Free the session resource
            break;             // Exit the loop on error
        }

        // Detach the thread so the system will automatically reclaim resources when the thread finishes
        pthread_detach(thread);
    }

// Cleanup: free the SSH bind object
cleanup:
    ssh_bind_free(sshbind);
    return ret_val; // Return the final status
}
