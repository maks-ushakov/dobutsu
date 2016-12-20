CC=c99
CFLAGS=-O2

PLAYOBJ=moves.o movetable.o notation.o play.o validation.o
POSCODETESTOBJ=moves.o movetable.o notation.o validation.o poscode.o poscodetest.o
GENDBOBJ=gendb.o tbaccess.o tbgenerate.o moves.o movetable.o poscode.o

all: play poscodetest gendb

play: $(PLAYOBJ)
	$(CC) $(CFLAGS) $(LDFLAGS) -o play $(PLAYOBJ)

poscodetest: $(POSCODETESTOBJ)
	$(CC) $(CFLAGS) $(LDFLAGS) -o poscodetest $(POSCODETESTOBJ)

gendb: $(GENDBOBJ)
	$(CC) $(CFLAGS) $(LDFLAGS) -o gendb $(GENDBOBJ)

clean:
	rm -f *.o play poscodetest gendb

.PHONY: clean all
