# CS 241 Fall 2013
# The University of Illinois

CC = gcc
INC = -I.
FLAGS = -O4 -W -Wall -g
LINKOPTS = -lpthread

all: msort gen doc/html

doc/html:
	doxygen -u doc/Doxyfile

msort: msort.c
	$(CC) $(INC) $(FLAGS) $(LINKOPTS) msort.c -o msort

gen: gen.c
	$(CC) $(INC) $(FLAGS) gen.c -o gen

clean:
	rm -rf msort gen doc/html
