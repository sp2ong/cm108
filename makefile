CC=gcc
CFLAGS=-Wall
LDFLAGS=-ludev
 
#cm108: cm108.o
OBJECTS=cm108.o
all: $(OBJECTS)
    $(CC) $(CFLAGS) $(OBJECTS) -o cm108 $(LDFLAGS)
 
.PHONY: install
install: cm108
    sudo cp cm108 /usr/local/bin
#   cp 99-cm108-cmedia.rules /etc/udev/rules.d
 
.PHONY: clean
clean:
    rm -f cm108 *.o

