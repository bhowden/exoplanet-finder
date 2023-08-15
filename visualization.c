/*
 * Generate a 3d model for computer screens based on exoplanet coordinates for visualization
 */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <float.h>
#include "exoplanet.c"

struct CartesianCoordinates {
    double x;
    double y;
    double z;
};

// Converts galactic coordinates to Cartesian coordinates
struct CartesianCoordinates convertToCartesian(struct Exoplanet exoplanet) {
    struct CartesianCoordinates cartesianCoord;

    // Convert galactic coordinates to spherical coordinates
    double r = exoplanet.distance; // Assuming 'distance' is the radius in light years
    double theta = exoplanet.galacticLongitude * (M_PI / 180.0); // Convert degrees to radians
    double phi = exoplanet.galacticLatitude * (M_PI / 180.0); // Convert degrees to radians

    // Convert spherical coordinates to Cartesian coordinates
    cartesianCoord.x = r * cos(theta) * cos(phi);
    cartesianCoord.y = r * sin(theta) * cos(phi);
    cartesianCoord.z = r * sin(phi);

    return cartesianCoord;
}

// Scales Cartesian coordinates using a scaling factor
void scaleCoordinates(struct CartesianCoordinates *coordinates, double scalingFactor) {
    coordinates->x *= scalingFactor;
    coordinates->y *= scalingFactor;
    coordinates->z *= scalingFactor;
}

// Calculates scaling factor for visualization
double calculateScalingFactor(double maxDistance, double minDistance, double screenWidth, double screenHeight) {
    double distanceRange = maxDistance - minDistance;
    double visualizationWidth = screenWidth;
    double visualizationHeight = screenHeight;

    // Calculate scaling factors for x, y, and z axes
    double scaleX = visualizationWidth / distanceRange;
    double scaleY = visualizationHeight / distanceRange;
    double scaleZ = 1.0; // You may adjust this based on your desired depth

    // Use the smallest scaling factor to fit within the screen
    return fmin(scaleX, fmin(scaleY, scaleZ));
}

// Generates OBJ data for exoplanets and returns a pointer to the data
// Memory management responsibility is with the caller
// Generates OBJ data for exoplanets as dots and returns a pointer to the data
// Memory management responsibility is with the caller
char *generateObjDataDots(struct Exoplanet *exoplanets, int numExoplanets, double screenWidth, double screenHeight, size_t *objSize) {
    double maxDistance = 0.0;
    double minDistance = DBL_MAX;

    // Find maximum and minimum distances among exoplanets
    for (int i = 0; i < numExoplanets; i++) {
        if (exoplanets[i].distance > maxDistance) {
            maxDistance = exoplanets[i].distance;
        }
        if (exoplanets[i].distance < minDistance) {
            minDistance = exoplanets[i].distance;
        }
    }

    // Calculate scaling factor for visualization
    double scalingFactor = calculateScalingFactor(maxDistance, minDistance, screenWidth, screenHeight);

    // Allocate memory for OBJ data
    size_t bufferSize = numExoplanets * 128; // Adjust buffer size as needed
    char *objData = (char *)malloc(bufferSize);
    if (!objData) {
        printf("Memory allocation error\n");
        return NULL;
    }

    // Generate vertex data and format it as OBJ points
    size_t offset = 0;
    for (int i = 0; i < numExoplanets; i++) {
        struct CartesianCoordinates cartesianCoord = convertToCartesian(exoplanets[i]);
        scaleCoordinates(&cartesianCoord, scalingFactor);

        // Format the point line for OBJ format
        offset += snprintf(objData + offset, bufferSize - offset, "p %.6f %.6f %.6f\n", cartesianCoord.x, cartesianCoord.y, cartesianCoord.z);
    }

    *objSize = offset;

    return objData;
}

