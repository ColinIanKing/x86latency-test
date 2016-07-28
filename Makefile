BINDIR=/usr/bin

x86latency-test: x86latency-test.o
	$(CC) $< -lm -o $@

CFLAGS  += -O3 -Wall -Werror

clean:
	rm -f x86latency-test x86latency-test.o x86latency-test*snap

install: x86latency-test
	mkdir -p ${DESTDIR}${BINDIR}
	cp x86latency-test ${DESTDIR}${BINDIR}

