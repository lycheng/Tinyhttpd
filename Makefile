all: httpd client
LIBS = -lpthread #-lsocket
httpd: httpd.c
	gcc -std=c99 -g -W -Wall -o $@ $<

client: simpleclient.c
	gcc -W -Wall -o $@ $<
clean:
	rm httpd
