CC = gcc
CFLAGS = -std=c99 -Wall -Wextra -g
LIBS = -lssh -ljansson

SRC = exoplanet-finder.c

all: exoplanet-finder

exoplanet_server: $(SRC)
	$(CC) $(CFLAGS) -o $@ $^ $(LIBS)

clean:
	rm -f exoplanet-finder
