// Define constants
#define PI 3.14159265358979323846
// position angle of the North Celestial Pole (in degrees) in Galactic coordinates
#define ANGLE_NCP 123.932
// the declination of the North Galactic Pole (in degrees)
#define DEC_NGP 27.12825
// right ascension of the North Galactic Pole (in degrees).
#define RA_NGP 192.85948

#define RAD_TO_DEG(radians) ((radians) * (180.0 / PI))
#define DEG_TO_RAD(degrees) ((degrees) * (PI / 180.0))

double solveKeplersEquation(double M, double e);
void equatorial_to_galactic(double ra, double dec, double *l, double *b);


// plz add stay_alive to my struct
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
    int stay_alive;
};


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

    // convert astronomical units to light years
    double distance_light_years = distance * 0.0000158125074;

    // set light years in exoplanet struct
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

    // Convert declination from radians to degrees
    planet->declination = RAD_TO_DEG(dec);
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
            // return calculated eccentric anomaly
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
    *l = fmod((*l + 2.0 * PI), (2.0 * PI)) * 180.0 / PI;
    *b = *b * 180.0 / PI;

    // Adjust the origin of l to be at the North Galactic Center
    *l = *l - RA_NGP;
    if (*l < 0)
    {
        *l += 360;
    }
}
