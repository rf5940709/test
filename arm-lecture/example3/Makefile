CC	= arm-linux-gnueabihf-gcc
CFLAGS	= -O3 -ggdb -Wall
LDFLAGS = -fno-stack-protector

objects	= example3.o
objects_1 = example3_1.o
objects_2 = example3_2.o

default: example3 example3_1 example3_2

.PHONY: default clean

example3: $(objects)
	$(CC) -o $@ $^
example3.o: example3.c

example3_1: $(objects_1)
	$(CC) -o $@ $^
example3_1.o: example3_1.c

example3_2: $(objects_2)
	$(CC) -o $@ $^
example3_2.o: example3_2.c

%.o: %.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<

clean:
	rm -f $(objects) example3 $(objects_1) example3_1 $(objects_2) example3_2

qemu_0: example3
	qemu-arm -L /usr/arm-linux-gnueabihf ./example3
qemu_1: example3_1
	qemu-arm -L /usr/arm-linux-gnueabihf ./example3_1
qemu_2: example3_2
	qemu-arm -L /usr/arm-linux-gnueabihf ./example3_2
