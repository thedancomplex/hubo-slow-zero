default: all

CFLAGS := -I./include -g --std=gnu99
CC := gcc

BINARIES := hubo-loop
all : $(BINARIES)

LIBS := -lach -lrt 

hubo-loop: src/hubo-loop.o
	gcc -o $@ $< -lach -lrt -lm -lc

%.o: %.c
	$(CC) $(CFLAGS) -o $@ -c $<

clean:
	rm -f $(BINARIES) src/*.o

