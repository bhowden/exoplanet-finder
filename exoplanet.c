struct Exoplanet {
    const char *name;               // Exoplanet name

    double mass;                    // Mass of the exoplanet in Jupiters
    double planetRadius;            // Radius of the exoplanet in Jupiter radii
    double orbitalRadius;           // Orbital radius of the exoplanet in AU
    double orbitalPeriod;           // Orbital period of the exoplanet in years
    double eccentricity;            // Eccentricity of the exoplanet's orbit
    double inclination;             // Orbital inclination in degrees
    double longitudeOfNode;         // Longitude of the ascending node in degrees
    double argumentOfPeriapsis;     // Argument of periapsis in degrees
    double unixTime;                // Optional Unix time in seconds (timestamp)
    double distance;                // Calculated distance result
    double ra;                      // Calculated Right Ascension result
    double declination;             // Declination angle
    double galacticLongitude;       // Galactic longitude in degrees
    double galacticLatitude;        // Galactic latitude in degrees
    int stayAlive;                  // Flag to keep the SSH connection alive (1 for true, 0 for false)
};

struct Exoplanet get_default_exoplanet() {
    struct Exoplanet exoplanet = {
            .name = "Default",
            .mass = 8.053,
            .planetRadius = 1.12,
            .orbitalRadius = 2.774,
            .orbitalPeriod = 4.8,
            .eccentricity = 0.37,
            .inclination = 0.0,
            .longitudeOfNode = 0.0,
            .argumentOfPeriapsis = 0.0,
            .galacticLongitude = 0.0,
            .galacticLatitude = 0.0,
            .unixTime = 0.0,
            .distance = 0.0,
            .ra = 0.0
    };

    return exoplanet;
}
