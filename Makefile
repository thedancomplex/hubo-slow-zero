default: all

CFLAGS := -I./include -g --std=gnu99
CC := gcc

BINARIES := hubo-slow-zero
all : $(BINARIES)

LIBS := -lach -lrt 

hubo-slow-zero: src/hubo-slow-zero.o
	gcc -o $@ $< -lach -lrt -lm -lc

%.o: %.c
	$(CC) $(CFLAGS) -o $@ -c $<

clean:
	rm -f $(BINARIES) src/*.o

