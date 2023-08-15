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

struct CartesianCoordinates convertToCartesian(struct Exoplanet exoplanet) {
    struct CartesianCoordinates cartesianCoord;

    double r = exoplanet.distance; // Assuming 'distance' is the radius in light years
    double theta = exoplanet.galacticLongitude * (M_PI / 180.0); // Convert degrees to radians
    double phi = exoplanet.galacticLatitude * (M_PI / 180.0); // Convert degrees to radians

    cartesianCoord.x = r * cos(theta) * cos(phi);
    cartesianCoord.y = r * sin(theta) * cos(phi);
    cartesianCoord.z = r * sin(phi);

    return cartesianCoord;
}

void scaleCoordinates(struct CartesianCoordinates *coordinates, double scalingFactor) {
    coordinates->x *= scalingFactor;
    coordinates->y *= scalingFactor;
    coordinates->z *= scalingFactor;
}

double calculateScalingFactor(double maxDistance, double minDistance, double screenWidth, double screenHeight) {
    double distanceRange = maxDistance - minDistance;
    double visualizationWidth = screenWidth;
    double visualizationHeight = screenHeight;

    double scaleX = visualizationWidth / distanceRange;
    double scaleY = visualizationHeight / distanceRange;
    double scaleZ = 1.0; // You may adjust this based on your desired depth

    return fmin(scaleX, fmin(scaleY, scaleZ));
}

// don't forget to free me
char *generateObjData(struct Exoplanet *exoplanets, int numExoplanets, double screenWidth, double screenHeight, size_t *objSize) {
    double maxDistance = 0.0;
    double minDistance = DBL_MAX;

    for (int i = 0; i < numExoplanets; i++) {
        if (exoplanets[i].distance > maxDistance) {
            maxDistance = exoplanets[i].distance;
        }
        if (exoplanets[i].distance < minDistance) {
            minDistance = exoplanets[i].distance;
        }
    }

    double scalingFactor = calculateScalingFactor(maxDistance, minDistance, screenWidth, screenHeight);

    size_t bufferSize = numExoplanets * 128; // Adjust buffer size as needed
    char *objData = (char *)malloc(bufferSize);
    if (!objData) {
        printf("Memory allocation error\n");
        return NULL;
    }

    size_t offset = 0;
    for (int i = 0; i < numExoplanets; i++) {
        struct CartesianCoordinates cartesianCoord = convertToCartesian(exoplanets[i]);
        scaleCoordinates(&cartesianCoord, scalingFactor);

        offset += snprintf(objData + offset, bufferSize - offset, "v %.6f %.6f %.6f\n", cartesianCoord.x, cartesianCoord.y, cartesianCoord.z);
    }

    *objSize = offset;

    return objData;
}