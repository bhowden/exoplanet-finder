CC = gcc
CFLAGS = -std=c99 -Wall -Wextra -g
LIBS = -lssh -ljansson

SRC = exoplanet_server.c

all: exoplanet_server

exoplanet_server: $(SRC)
	$(CC) $(CFLAGS) -o $@ $^ $(LIBS)

clean:
	rm -f exoplanet_server
