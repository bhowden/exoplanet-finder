CC = gcc
CFLAGS = -std=c99 -Wall -Wextra -g
LIBS = -lssh -ljansson

SRC = your_program.c

all: your_program

your_program: $(SRC)
	$(CC) $(CFLAGS) -o $@ $^ $(LIBS)

clean:
	rm -f your_program
