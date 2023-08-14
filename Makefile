CC = gcc
CFLAGS = -std=c99 -Wall -Wextra -g
LIBS = -lssh -ljansson -lm

SRC = exoplanet-finder.c

all: exoplanet-finder

exoplanet-finder: $(SRC)
	$(CC) $(CFLAGS) -o $@ $^ $(LIBS)

clean:
	rm -f exoplanet-finder
