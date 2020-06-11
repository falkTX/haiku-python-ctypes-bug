#!/usr/bin/make -f

CFLAGS += -Wall -Wextra -Werror -O0 -g

all: ctypes-test.so

ctypes-test.so: ctypes-test.c
	$(CC) $< $(CFLAGS) -fPIC -shared -o $@
	set -e; ./ctypes-test.py

clean:
	rm -f ctypes-test.so
