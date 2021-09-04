CROSS_COMPILE ?=aarch64-linux-gnu-
CC = $(CROSS_COMPILE)gcc

CFLAGS += "-DFORCE_STRICT_ALIGNMENT"

all : devmem2

devmem2 : devmem2.o
	$(CC) -o devmem2 devmem2.c ${CFLAGS} ${LDFLAGS}

devmem2.o : devmem2.c
	$(CC) -c devmem2.c

clean :
	@echo "Cleaning up..."
	-$(shell rm -f devmem2 *.o)
	@echo "Done."
